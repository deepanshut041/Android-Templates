package ${packageName}.${newPackage};

import androidx.lifecycle.ViewModel;

import dagger.Binds;
import dagger.Module;
import dagger.multibindings.IntoMap;

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