import os
import keep_alive
from aiogram import Bot, Dispatcher, executor, types
from aiogram.types import InlineKeyboardMarkup, InlineKeyboardButton
from aiogram.utils.exceptions import BotBlocked

BOT_TOKEN = os.getenv("BOT_TOKEN")
ADMIN_ID = int(os.getenv("ADMIN_ID"))
CHANNEL_ID = int(os.getenv("CHANNEL_ID"))

bot = Bot(token=BOT_TOKEN)
dp = Dispatcher(bot)

keep_alive.keep_alive()

# Храним id пользователей, ожидающих одобрения
pending_users = {}

@dp.message_handler(commands=["start"])
async def start(message: types.Message):
    await message.answer("Здравствуйте, нужно убедиться, что вы не бот.\nНапишите решение примера: 3 + 2 + 2")

@dp.message_handler(lambda message: message.text)
async def check_answer(message: types.Message):
    if message.text.strip() == "7":
        user_id = message.from_user.id
        username = message.from_user.username or "без ника"
        pending_users[user_id] = True

        # Кнопка одобрения
        kb = InlineKeyboardMarkup().add(
            InlineKeyboardButton("✅ Одобрить", callback_data=f"approve_{user_id}")
        )

        try:
            await bot.send_message(
                ADMIN_ID,
                f"📥 Новая заявка от @{username} (ID: {user_id})\nОтвет: 7",
                reply_markup=kb
            )
        except BotBlocked:
            print("Бот заблокирован админом")

        await message.answer("✅ Ваша заявка подана и ожидает одобрения администрации.")
    else:
        await message.answer("❌ Неверный ответ. Попробуйте снова.")

@dp.callback_query_handler(lambda c: c.data and c.data.startswith("approve_"))
async def approve_user(callback_query: types.CallbackQuery):
    user_id = int(callback_query.data.split("_")[1])
    try:
        # Получаем инвайт-ссылку в канал
        invite_link = await bot.export_chat_invite_link(CHANNEL_ID)
        await bot.send_message(user_id, f"✅ Ваша заявка одобрена. Вот ссылка для вступления: {invite_link}")
        await callback_query.answer("Пользователю отправлена ссылка.")
    except Exception as e:
        await callback_query.answer("❌ Ошибка при отправке ссылки.")
        print(e)

if __name__ == "__main__":
    executor.start_polling(dp, skip_updates=True)
