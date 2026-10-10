import 'dart:io';

void main(){
  int pilih = 0;
  bool jalan = true;
  bool ceklogin = true;
  int saldo = 2000000;
  int pin = 112233;
  void menu(){
    print('=============================');
    print('BANK HEHEHEHEHEHE');
    print('=============================');
    print('1. Cek Saldo');
    print('2. Setor Tunai');
    print('3. Tarik Tunai');
    print('4. Log Out');
  }
  void tampilsaldo(){
    print('Saldo : $saldo');
  }
  void setortunai(){
    int setor = 0;
    print('Masukkan Jumlah Setoran : ');
    setor = int.parse(stdin.readLineSync() ?? '');
    saldo = saldo + setor;
  }
  void tariktunai(){
    int tarik = 0;
    int pecahanuang;
    int pecahan = 0;
    print('Masukkan Jumlah Tarik Tunai : ');
    tarik = int.parse(stdin.readLineSync() ?? '');
    saldo = saldo - tarik;
    print('Pilih Pecahan Uang');
    print('1. Rp 100.000');
    print('2. Rp 50.000');
    print('Pilih Pecahan Uang Yang Anda Inginkan :');
    print('=============================');
    pecahan = int.parse(stdin.readLineSync() ?? '');
    print('=============================');
    switch(pecahan){
      case 1:
        pecahanuang = 100000;
        pecahan = tarik ~/ pecahanuang;
        print('$pecahan x 100.000');
        if(tarik % pecahanuang != 0){
          int sisa = tarik % pecahanuang;
          int sisapecahan = sisa ~/ 50000;
          print('$sisapecahan x 50.000');
        }
        break;
      case 2:
        pecahanuang = 50000;
        pecahan = tarik ~/ pecahanuang;
        print('$pecahan x 50.000');
        break;
    }
  }
  if(ceklogin == true) {
    do {
      print('=============================');
      print('BANK SERBA ADA');
      print('=============================');
      print('Masukkan Pin ATM Anda : ');
      pin = int.parse(stdin.readLineSync() ?? '');
      if(pin == 112233){
        while (jalan == true){
          menu(); 
          print('Masukkan Pilih Menu (1/2/3/4) : ');
          pilih = int.parse(stdin.readLineSync() ?? '');
          print('=============================');
          switch(pilih){
            case 1:
              tampilsaldo();
              break;
            case 2:
              setortunai();
              break;
            case 3:
            tariktunai();
              break;
            case 4:
              jalan = false;
              ceklogin = false;
              break;
          }
        }
      }
      
    } while (ceklogin != false);
  }
}
