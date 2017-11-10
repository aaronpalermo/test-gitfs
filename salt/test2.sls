{% import 'imported.sls' as test with context %}

echo test:
  cmd.run

