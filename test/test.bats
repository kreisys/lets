setup() {
    load 'test_helper/common-setup'
    _common_setup
}

@test "Check welcome message" {
    run project.sh
    assert_output --partial 'Welcome to our project!'

    run project.sh
    refute_output --partial 'Welcome to our project!'
}

teardown() {
    rm -f /tmp/bats-tutorial-project-ran
}
