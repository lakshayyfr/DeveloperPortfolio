
# System Profile

## 1. System Specifications

| Component | Specification |
|-----------|---------------|
| CPU Model | AMD Ryzen 7 5800HS with Radeon Graphics |
| CPU Cores | 8 |
| CPU Threads | 16 |
| Architecture | x86_64 (64-bit) |
| Total RAM (WSL) | 7.5 GiB |
| Available RAM | 6.9 GiB |
| Used RAM | 611 MiB |
| Swap Memory | 2 GiB |
| Primary Storage | 512 GB SSD |
| Storage Model | Samsung MZVL4512HBLU-00BTW |
| WSL Virtual Storage | 1 TiB |
| Host Operating System | Windows 11 |
| Linux Operating System | Ubuntu 26.04.1 LTS |
| Kernel Version | 6.18.33.2-microsoft-standard-WSL2 |
| Virtualization | AMD-V / Microsoft Hypervisor |

Note: Ubuntu runs through Windows Subsystem for Linux (WSL2).
The RAM and virtual storage readings represent resources
visible to the Linux environment.

## 2. Commands Used

- `lscpu` - Displays CPU information.
- `free -h` - Displays memory information.
- `lsblk` - Displays storage devices.
- `uname -a` - Displays kernel information.
- `cat /etc/os-release` - Displays operating system details.
- `Get-PhysicalDisk` - Identifies physical storage through Windows.

## 3. Binary Number Representation

### Decimal to Binary Conversion (75)

| Division | Quotient | Remainder |
|----------|----------|-----------|
| 75 / 2 | 37 | 1 |
| 37 / 2 | 18 | 1 |
| 18 / 2 | 9 | 0 |
| 9 / 2 | 4 | 1 |
| 4 / 2 | 2 | 0 |
| 2 / 2 | 1 | 0 |
| 1 / 2 | 0 | 1 |

Reading the remainders from bottom to top:

75 (Decimal) = 1001011 (Binary)

### Binary to Decimal Conversion (110101)

Using the positional weight method:

110101 = (1 x 2^5) + (1 x 2^4) + (0 x 2^3)
       + (1 x 2^2) + (0 x 2^1) + (1 x 2^0)

       = 32 + 16 + 0 + 4 + 0 + 1

       = 53

110101 (Binary) = 53 (Decimal)

### Why Computers Use Binary

Computers use binary because electronic circuits can
reliably represent two states, 0 and 1.
