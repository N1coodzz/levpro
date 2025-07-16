
from aiogram import Bot, Dispatcher, types
from aiogram.utils import executor
import asyncio
import os

API_TOKEN = os.getenv("BOT_TOKEN")

bot = Bot(token=API_TOKEN)
dp = Dispatcher(bot)

@dp.message_handler(commands=['start'])
async def send_welcome(message: types.Message):
    kb = types.InlineKeyboardMarkup()
    kb.add(types.InlineKeyboardButton("✅ Хочу вступить в канал", callback_data="join"))
    await message.answer("Привет! Канал закрыт.\nЧтобы вступить — нажми кнопку ниже 👇", reply_markup=kb)

@dp.callback_query_handler(lambda c: c.data == 'join')
async def process_callback(callback_query: types.CallbackQuery):
    await bot.answer_callback_query(callback_query.id, text="Проверяю...")
    await asyncio.sleep(10)
    await bot.send_message(callback_query.from_user.id,
        "🔓 Доступ подтверждён!\n\n"
        "Вот твоя ссылка для вступления:\n"
        "👉 https://t.me/+ujY3zCnjt-MyMTQy\n\n"
        "⚠️ Ссылка действует только для тебя. Не передавай её другим.")

if __name__ == '__main__':
    executor.start_polling(dp, skip_updates=True)
