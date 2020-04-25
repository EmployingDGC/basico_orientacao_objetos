import 'dart:ffi';

void main(List<String> arguments) {
  Pessoa pessoa1 = new Pessoa('Davi', 23, 1.75);
  Pessoa pessoa2 = new Pessoa('Mayane', 18, 1.49);
  Pessoa pessoa3 = new Pessoa.recemNascido('nene', 0.30);

  pessoa1.printP();

  pessoa2.printP();

  pessoa3.printP();
}

class Pessoa {
  String _nome;
  int _idade;
  double _altura;
  bool _dormindo = false;

  Pessoa(this._nome, this._idade, this._altura);

  Pessoa.recemNascido(this._nome, this._altura) {
    this._idade = 0;
    this._dormindo = true;
  }

  void togleDormir() {
    this._dormindo = this._dormindo ? false : true;
  }

  void aniversario() {
    this._idade += 1;
  }

  void cresceu(double alt) {
    this._altura += alt;
  }

  void printP() {
    print('${this._nome} tem ${this._idade} anos, mede ${this._altura}m e${this._dormindo ? "" : " não"} está dormindo');
  }

  int get idade => _idade;

  String get nome => _nome;

  double get altura => _altura;

  bool get dormindo => _dormindo;

  set altura(double altura) {
    if (altura >= 0.3 && altura <= 3.0) {
      this._altura = altura;
    }
  }
}
