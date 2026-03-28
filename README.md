# 🛡️ Aleo Private Payroll System

A Zero-Knowledge (ZK) powered payroll application built on **Aleo**. This project ensures that employee salaries remain confidential while maintaining on-chain verifiability.

---

## 🚀 Overview
In traditional transparent blockchains, financial privacy is non-existent. Anyone can track wallet balances and see exactly how much an employee is paid. 

**Aleo Private Payroll** solves this by:
- **Shielded Payments:** Only the sender (Employer) and receiver (Employee) know the exact amount.
- **ZK Records:** Uses Aleo's native `record` system to keep data encrypted at rest.
- **Private Splitting:** Employees can spend or transfer portions of their salary without revealing their total accumulated balance.

## 🛠️ Technical Stack
- **Language:** Leo (Zero-Knowledge Programming Language)
- **Framework:** Aleo SDK
- **Wallet Integration:** Shield Wallet (Mandatory for WaveHack)

## 📁 Program Structure
- `src/main.leo`: Core ZK logic for payroll distribution and record splitting.
- `program.json`: Program metadata for Aleo network.

## ⚙️ How to Test Locally
Ensure you have the [Aleo/Leo Toolchain](https://github.com/AleoHQ/leo) installed.

1. **Build the program:**
   ```bash
   leo build
2. Simulate a Payroll Payment:
Replace <ADDRESS> with a valid Aleo address.
   leo run pay_employee <ADDRESS> 5000u64

3. Simulate Spending/Splitting Salary
   leo run split_salary <RECORD> <AMOUNT>u64
