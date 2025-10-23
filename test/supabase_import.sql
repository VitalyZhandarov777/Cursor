-- Создание таблицы для финансовых транзакций
CREATE TABLE IF NOT EXISTS financial_transactions (
  id BIGSERIAL PRIMARY KEY,
  transaction_number INTEGER NOT NULL,
  transaction_date DATE NOT NULL,
  transaction_type VARCHAR(50) NOT NULL,
  client_name VARCHAR(255) NOT NULL,
  client_email VARCHAR(255) NOT NULL,
  amount DECIMAL(10, 2) NOT NULL,
  currency VARCHAR(3) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Создание индексов для оптимизации запросов
CREATE INDEX IF NOT EXISTS idx_transaction_date ON financial_transactions(transaction_date);
CREATE INDEX IF NOT EXISTS idx_client_email ON financial_transactions(client_email);
CREATE INDEX IF NOT EXISTS idx_transaction_type ON financial_transactions(transaction_type);
CREATE INDEX IF NOT EXISTS idx_currency ON financial_transactions(currency);

-- Вставка данных
INSERT INTO financial_transactions (transaction_number, transaction_date, transaction_type, client_name, client_email, amount, currency) VALUES
(1, '2024-11-02', 'Платеж', 'Alice Johnson', 'alice.johnson@gmail.com', 42.50, 'USD'),
(2, '2024-11-03', 'Списание', 'Carlos Mendes', 'carlos.mendes@outlook.com', 19.99, 'EUR'),
(3, '2024-11-05', 'Возврат', 'Maria Silva', 'maria.silva@yahoo.com', 120.00, 'BRL'),
(4, '2024-11-06', 'Платеж', 'John Doe', 'john_doe@protonmail.com', 8.75, 'GBP'),
(5, '2024-11-07', 'Неудачное списание', 'Emma Wilson', 'emma.wilson@gmail.com', 13.40, 'USD'),
(6, '2024-11-08', 'Платеж', 'Igor Petrov', 'igor.petrov@mail.ru', 560.00, 'RUB'),
(7, '2024-11-09', 'Частичный возврат', 'Kevin Brown', 'kevinb@icloud.com', 24.10, 'EUR'),
(8, '2024-11-10', 'Списание', 'Sarah Lee', 'sarah.lee@me.com', 35.00, 'USD'),
(9, '2024-11-11', 'Платеж', 'Olga Ivanova', 'olga.ivanova@gmail.com', 87.20, 'USD'),
(10, '2024-11-12', 'Возврат', 'David Smith', 'david.smith@outlook.com', 210.00, 'EUR'),
(11, '2024-11-13', 'Списание', 'Anna Kowalska', 'anna.kowalska@yahoo.com', 48.99, 'EUR'),
(12, '2024-11-14', 'Частичный возврат', 'Liam Murphy', 'liam.murphy@icloud.com', 32.50, 'GBP'),
(13, '2024-11-15', 'Неудачное списание', 'Sophie Laurent', 'sophie.laurent@mail.ru', 19.10, 'EUR'),
(14, '2024-11-16', 'Платеж', 'Marta Rossi', 'marta.rossi@me.com', 25.00, 'USD'),
(15, '2024-11-17', 'Списание', 'Pavel Novak', 'pavel.novak@gmail.com', 13.75, 'EUR'),
(16, '2024-11-18', 'Платеж', 'Elena Popescu', 'elena.popescu@outlook.com', 240.00, 'USD'),
(17, '2024-11-19', 'Возврат', 'Lucas Garcia', 'lucas.garcia@gmail.com', 19.00, 'BRL'),
(18, '2024-11-20', 'Платеж', 'Isabella Santos', 'isabella.santos@mail.ru', 102.25, 'USD'),
(19, '2024-11-21', 'Неудачное списание', 'Noah Becker', 'noah.becker@icloud.com', 5.90, 'GBP'),
(20, '2024-11-22', 'Частичный возврат', 'Yuki Tanaka', 'yuki.tanaka@me.com', 13.40, 'EUR'),
(21, '2024-11-23', 'Списание', 'Alice Johnson', 'alice.johnson@gmail.com', 77.10, 'USD'),
(22, '2024-11-24', 'Платеж', 'Carlos Mendes', 'carlos.mendes@outlook.com', 45.99, 'EUR'),
(23, '2024-11-25', 'Возврат', 'Maria Silva', 'maria.silva@yahoo.com', 55.00, 'BRL'),
(24, '2024-11-26', 'Платеж', 'John Doe', 'john.doe@protonmail.com', 12.10, 'GBP'),
(25, '2024-11-27', 'Неудачное списание', 'Emma Wilson', 'emma.wilson@gmail.com', 9.30, 'USD'),
(26, '2024-11-28', 'Платеж', 'Igor Petrov', 'igor.petrov@mail.ru', 720.00, 'RUB'),
(27, '2024-11-29', 'Частичный возврат', 'Kevin Brown', 'kevinb@icloud.com', 80.00, 'EUR'),
(28, '2024-11-30', 'Списание', 'Sarah Lee', 'sarah.lee@me.com', 22.35, 'USD'),
(29, '2024-12-01', 'Платеж', 'Olga Ivanova', 'olga.ivanova@gmail.com', 91.60, 'USD'),
(30, '2024-12-02', 'Возврат', 'David Smith', 'david.smith@outlook.com', 48.00, 'EUR'),
(31, '2024-12-03', 'Списание', 'Anna Kowalska', 'anna.kowalska@yahoo.com', 13.99, 'EUR'),
(32, '2024-12-04', 'Частичный возврат', 'Liam Murphy', 'liam.murphy@icloud.com', 7.50, 'GBP'),
(33, '2024-12-05', 'Неудачное списание', 'Sophie Laurent', 'sophie.laurent@mail.ru', 29.90, 'EUR'),
(34, '2024-12-06', 'Платеж', 'Marta Rossi', 'marta.rossi@me.com', 18.00, 'USD'),
(35, '2024-12-07', 'Списание', 'Pavel Novak', 'pavel.novak@gmail.com', 23.15, 'EUR'),
(36, '2024-12-08', 'Платеж', 'Elena Popescu', 'elena.popescu@outlook.com', 180.00, 'USD'),
(37, '2024-12-09', 'Возврат', 'Lucas Garcia', 'lucas.garcia@gmail.com', 29.00, 'BRL'),
(38, '2024-12-10', 'Платеж', 'Isabella Santos', 'isabella.santos@mail.ru', 55.75, 'USD'),
(39, '2024-12-11', 'Неудачное списание', 'Noah Becker', 'noah.becker@icloud.com', 12.50, 'GBP'),
(40, '2024-12-12', 'Частичный возврат', 'Yuki Tanaka', 'yuki.tanaka@me.com', 17.90, 'EUR'),
(41, '2024-12-13', 'Списание', 'Alice Johnson', 'alice.johnson@gmail.com', 90.50, 'USD'),
(42, '2024-12-14', 'Платеж', 'Carlos Mendes', 'carlos.mendes@outlook.com', 34.20, 'EUR'),
(43, '2024-12-15', 'Возврат', 'Maria Silva', 'maria.silva@yahoo.com', 130.00, 'BRL'),
(44, '2024-12-16', 'Платеж', 'John Doe', 'john.doe@protonmail.com', 22.80, 'GBP'),
(45, '2024-12-17', 'Неудачное списание', 'Emma Wilson', 'emma.wilson@gmail.com', 16.90, 'USD'),
(46, '2024-12-18', 'Платеж', 'Igor Petrov', 'igor.petrov@mail.ru', 460.00, 'RUB'),
(47, '2024-12-19', 'Частичный возврат', 'Kevin Brown', 'kevinb@icloud.com', 42.10, 'EUR'),
(48, '2024-12-20', 'Списание', 'Sarah Lee', 'sarah.lee@me.com', 64.00, 'USD'),
(49, '2024-12-21', 'Платеж', 'Olga Ivanova', 'olga.ivanova@gmail.com', 110.25, 'USD'),
(50, '2024-12-22', 'Возврат', 'David Smith', 'david.smith@outlook.com', 70.00, 'EUR'),
(51, '2024-12-23', 'Списание', 'Anna Kowalska', 'anna.kowalska@yahoo.com', 28.49, 'EUR'),
(52, '2024-12-24', 'Частичный возврат', 'Liam Murphy', 'liam.murphy@icloud.com', 9.80, 'GBP'),
(53, '2024-12-25', 'Неудачное списание', 'Sophie Laurent', 'sophie.laurent@mail.ru', 33.00, 'EUR'),
(54, '2024-12-26', 'Платеж', 'Marta Rossi', 'marta.rossi@me.com', 27.00, 'USD'),
(55, '2024-12-27', 'Списание', 'Pavel Novak', 'pavel.novak@gmail.com', 15.10, 'EUR'),
(56, '2024-12-28', 'Платеж', 'Elena Popescu', 'elena.popescu@outlook.com', 140.00, 'USD'),
(57, '2024-12-29', 'Возврат', 'Lucas Garcia', 'lucas.garcia@gmail.com', 21.00, 'BRL'),
(58, '2024-12-30', 'Платеж', 'Isabella Santos', 'isabella.santos@mail.ru', 63.45, 'USD'),
(59, '2024-12-31', 'Неудачное списание', 'Noah Becker', 'noah.becker@icloud.com', 7.10, 'GBP'),
(60, '2025-01-01', 'Частичный возврат', 'Yuki Tanaka', 'yuki.tanaka@me.com', 19.20, 'EUR'),
(61, '2025-01-02', 'Списание', 'Alice Johnson', 'alice.johnson@gmail.com', 54.75, 'USD'),
(62, '2025-01-03', 'Платеж', 'Carlos Mendes', 'carlos.mendes@outlook.com', 38.90, 'EUR'),
(63, '2025-01-04', 'Возврат', 'Maria Silva', 'maria.silva@yahoo.com', 95.00, 'BRL'),
(64, '2025-01-05', 'Платеж', 'John Doe', 'john.doe@protonmail.com', 18.70, 'GBP'),
(65, '2025-01-06', 'Неудачное списание', 'Emma Wilson', 'emma.wilson@gmail.com', 23.40, 'USD'),
(66, '2025-01-07', 'Платеж', 'Igor Petrov', 'igor.petrov@mail.ru', 640.00, 'RUB'),
(67, '2025-01-08', 'Частичный возврат', 'Kevin Brown', 'kevinb@icloud.com', 35.50, 'EUR'),
(68, '2025-01-09', 'Списание', 'Sarah Lee', 'sarah.lee@me.com', 46.25, 'USD'),
(69, '2025-01-10', 'Платеж', 'Olga Ivanova', 'olga.ivanova@gmail.com', 96.10, 'USD'),
(70, '2025-01-11', 'Возврат', 'David Smith', 'david.smith@outlook.com', 84.00, 'EUR'),
(71, '2025-01-12', 'Списание', 'Anna Kowalska', 'anna.kowalska@yahoo.com', 33.59, 'EUR'),
(72, '2025-01-13', 'Частичный возврат', 'Liam Murphy', 'liam.murphy@icloud.com', 11.80, 'GBP'),
(73, '2025-01-14', 'Неудачное списание', 'Sophie Laurent', 'sophie.laurent@mail.ru', 27.60, 'EUR'),
(74, '2025-01-15', 'Платеж', 'Marta Rossi', 'marta.rossi@me.com', 30.00, 'USD'),
(75, '2025-01-16', 'Списание', 'Pavel Novak', 'pavel.novak@gmail.com', 17.85, 'EUR'),
(76, '2025-01-17', 'Платеж', 'Elena Popescu', 'elena.popescu@outlook.com', 205.00, 'USD'),
(77, '2025-01-18', 'Возврат', 'Lucas Garcia', 'lucas.garcia@gmail.com', 22.50, 'BRL'),
(78, '2025-01-19', 'Платеж', 'Isabella Santos', 'isabella.santos@mail.ru', 59.95, 'USD'),
(79, '2025-01-20', 'Неудачное списание', 'Noah Becker', 'noah.becker@icloud.com', 6.80, 'GBP'),
(80, '2025-01-21', 'Частичный возврат', 'Yuki Tanaka', 'yuki.tanaka@me.com', 20.60, 'EUR'),
(81, '2025-01-22', 'Списание', 'Alice Johnson', 'alice.johnson@gmail.com', 61.40, 'USD'),
(82, '2025-01-23', 'Платеж', 'Carlos Mendes', 'carlos.mendes@outlook.com', 47.10, 'EUR'),
(83, '2025-01-24', 'Возврат', 'Maria Silva', 'maria.silva@yahoo.com', 72.00, 'BRL'),
(84, '2025-01-25', 'Платеж', 'John Doe', 'john.doe@protonmail.com', 20.50, 'GBP'),
(85, '2025-01-26', 'Неудачное списание', 'Emma Wilson', 'emma.wilson@gmail.com', 11.60, 'USD'),
(86, '2025-01-27', 'Платеж', 'Igor Petrov', 'igor.petrov@mail.ru', 510.00, 'RUB'),
(87, '2025-01-28', 'Частичный возврат', 'Kevin Brown', 'kevinb@icloud.com', 37.40, 'EUR'),
(88, '2025-01-29', 'Списание', 'Sarah Lee', 'sarah.lee@me.com', 50.80, 'USD'),
(89, '2025-01-30', 'Платеж', 'Olga Ivanova', 'olga.ivanova@gmail.com', 72.30, 'USD'),
(90, '2025-01-31', 'Возврат', 'David Smith', 'david.smith@outlook.com', 56.00, 'EUR'),
(91, '2025-02-01', 'Списание', 'Anna Kowalska', 'anna.kowalska@yahoo.com', 27.99, 'EUR'),
(92, '2025-02-02', 'Частичный возврат', 'Liam Murphy', 'liam.murphy@icloud.com', 14.20, 'GBP'),
(93, '2025-02-03', 'Неудачное списание', 'Sophie Laurent', 'sophie.laurent@mail.ru', 21.00, 'EUR'),
(94, '2025-02-04', 'Платеж', 'Marta Rossi', 'marta.rossi@me.com', 33.00, 'USD'),
(95, '2025-02-05', 'Списание', 'Pavel Novak', 'pavel.novak@gmail.com', 22.40, 'EUR'),
(96, '2025-02-06', 'Платеж', 'Elena Popescu', 'elena.popescu@outlook.com', 130.00, 'USD'),
(97, '2025-02-07', 'Возврат', 'Lucas Garcia', 'lucas.garcia@gmail.com', 24.10, 'BRL'),
(98, '2025-02-08', 'Платеж', 'Isabella Santos', 'isabella.santos@mail.ru', 66.60, 'USD'),
(99, '2025-02-09', 'Неудачное списание', 'Noah Becker', 'noah.becker@icloud.com', 9.70, 'GBP'),
(100, '2025-02-10', 'Частичный возврат', 'Yuki Tanaka', 'yuki.tanaka@me.com', 22.00, 'EUR');

-- Создание функции для автоматического обновления updated_at
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Создание триггера для автоматического обновления updated_at
CREATE TRIGGER update_financial_transactions_updated_at BEFORE UPDATE
    ON financial_transactions FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();






