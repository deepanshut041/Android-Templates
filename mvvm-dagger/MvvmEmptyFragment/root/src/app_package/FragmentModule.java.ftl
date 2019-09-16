package ${packageName}.${newPackage};

import androidx.lifecycle.ViewModel;

import dagger.Binds;
import dagger.Module;
import dagger.multibindings.IntoMap;

@Module
public abstract class ${className}FragmentModule {

    @Binds
    @IntoMap
    @ViewModelKey(${className}ViewModel.class)
    @SuppressWarnings("unused")
    abstract ViewModel viewModel(${className}ViewModel viewModel);

}