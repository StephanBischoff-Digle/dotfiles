# Rust
if type -q rustc
    # For RLS
    # https://github.com/fish-shell/fish-shell/issues/2456
    setenv LD_LIBRARY_PATH (rustc --print sysroot)"/lib:$LD_LIBRARY_PATH"
    setenv RUST_SRC_PATH (rustc --print sysroot)"/lib/rustlib/src/rust/library"
    
    set PATH $HOME/.cargo/bin $PATH
end

set XDG_CONFIG_HOME $HOME/.config
set XDG_DATA_HOME $HOME/.custom

set PYENV_ROOT $HOME/.pyenv
set PATH $PYENV_ROOT/bin $PATH
