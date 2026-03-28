program private_payroll.aleo {
    // Record ini adalah "amplop gaji" yang privat.
    // Hanya pemilik (owner) yang bisa buka isinya.
    record SalaryRecord {
        owner: address,
        amount: u64,
    }

    // Fungsi Bos/Perusahaan kirim gaji (Private)
    transition pay_employee(receiver: address, amount: u64) -> SalaryRecord {
        return SalaryRecord {
            owner: receiver,
            amount: amount,
        };
    }

    // Fungsi Karyawan pecah gaji (misal gaji 10jt, mau dipakai 2jt)
    // Sisa 8jt balik ke dompet sebagai record baru yang tetap privat
    transition split_salary(salary: SalaryRecord, spend_amount: u64) -> (SalaryRecord, SalaryRecord) {
        let remaining: u64 = salary.amount - spend_amount;

        let spend_record: SalaryRecord = SalaryRecord {
            owner: salary.owner,
            amount: spend_amount,
        };

        let change_record: SalaryRecord = SalaryRecord {
            owner: salary.owner,
            amount: remaining,
        };

        return (spend_record, change_record);
    }
}
