{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.php82
    pkgs.php82Extensions.pdo_mysql
    pkgs.composer
    pkgs.nodejs_20
    pkgs.npm
  ];
}
