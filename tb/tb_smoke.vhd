library vunit_lib;
context vunit_lib.vunit_context;

entity tb_smoke is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_smoke is
begin
  main : process
  begin
    test_runner_setup(runner, runner_cfg);
    while test_suite loop
      if run("toolchain_works") then
        check_equal(1 + 1, 2);
      end if;
    end loop;
    test_runner_cleanup(runner);
  end process;
end architecture;
