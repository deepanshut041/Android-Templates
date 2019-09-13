package ${packageName};

@Module
public abstract class ${className}ActivityModule {
    @Binds
    abstract ${className}ActivityListener providesFragmentListener(${className}Activity activity);

    @Binds
    @IntoMap
    @ViewModelKey(${className}ViewModel.class)
    @SuppressWarnings("unused")
    abstract ViewModel viewModel(${className}ViewModel viewModel);

}