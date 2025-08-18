# vim-config

Repositório para minha configuração pessoal do Vim.

## Sobre

Este repositório contém meus arquivos de configuração do Vim, otimizados para produtividade, navegação eficiente e suporte a diversas linguagens de programação.

## Instalação

Clone este repositório em seu diretório home:

```sh
git clone https://github.com/seu-usuario/vim-config.git ~/.vim
```

Crie um link simbólico para o arquivo `.vimrc`:

```sh
ln -sf ~/.vim/vimrc ~/.vimrc
```

Abra o Vim para garantir que as configurações foram aplicadas corretamente.

## Plugins

Os plugins são gerenciados via [vim-plug](https://github.com/junegunn/vim-plug) (ou outro gerenciador, se aplicável). Para instalar os plugins, abra o Vim e execute:

```
:PlugInstall
```

## Estrutura

- `vimrc`: Arquivo principal de configuração.
- `autoload/`, `plugged/`: Diretórios para plugins e scripts auxiliares.

## Personalização

Sinta-se à vontade para modificar as configurações conforme suas necessidades.
