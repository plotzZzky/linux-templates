## Linux Document Templates
### Modelos de documentos para uso no Linux

#### Como Usar

* **Opção 1 - Salve o conteúdo da pasta `templates`** dentro da pasta `~/Templates/` no seu sistema Linux.

   ```bash
   $ cp ./* ~/Templates/
  ```


* **Opção 2 - Crie um link simbólico** para o conteude desta pasta na sua home executando o seguinte comando no terminal:
   
   ```bash
   $ rm -r ~/Templates/
   $ ln -s "$(pwd)/templates" ~/Templates
  ```
