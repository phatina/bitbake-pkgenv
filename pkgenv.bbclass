inherit toolchain-scripts

do_populate_ide_support () {
    toolchain_create_tree_env_script
    echo 'export CMAKE_FLAGS="-DCMAKE_TOOLCHAIN_FILE=${WORKDIR}/toolchain.cmake"' >> ${script}
    echo 'export PATH=$PATH:/usr/bin:/usr/local/bin:$HOME/.local/bin' >> ${script}
    mv ${script} ${script}-${PN}
}

addtask populate_ide_support before do_build after do_install
