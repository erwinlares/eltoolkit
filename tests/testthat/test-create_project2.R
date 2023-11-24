test_that("valid project name", {
    expect_equal(stringr::str_detect("testprojectname", "^[a-zA-Z0-9]+$"),TRUE)
    expect_false(stringr::str_detect("test-projectname","^[a-zA-Z0-9]+$"))
    expect_false(stringr::str_detect("test_projectname","^[a-zA-Z0-9]+$"))
})
