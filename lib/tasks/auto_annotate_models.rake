if Rails.env.development?
  task :set_annotation_options do
    # You can override any of these by setting an environment variable of the
    # same name.
    Annotate.set_defaults({
      'position_in_class'    => "after",
      'show_indexes'         => "true",
      'simple_indexes'       => "false",
      'model_dir'            => "app/models",
      'include_version'      => "false",
      'require'              => "",
      'exclude_tests'        => "true",
      'exclude_fixtures'     => "true",
      'exclude_factories'    => "true",
      'ignore_model_sub_dir' => "false",
      'skip_on_db_migrate'   => "false",
      'format_bare'          => "true",
      'format_rdoc'          => "false",
      'format_markdown'      => "false",
      'sort'                 => "false",
      'force'                => "false",
      'trace'                => "false",
    })
  end

  Annotate.load_tasks
end
