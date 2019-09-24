package ${packageName}.${newPackage};

import androidx.lifecycle.ViewModel;

import com.squrlabs.mvvm.di.viewmodel.ViewModelKey;

import dagger.Binds;
import dagger.Module;
import dagger.multibindings.IntoMap;

@Module
public abstract class ${moduleClass} {
    @Binds
    abstract ${listenerClass} providesFragmentListener(${activityClass} activity);

    @Binds
    @IntoMap
    @ViewModelKey(${viewModelClass}.class)
    @SuppressWarnings("unused")
    abstract ViewModel viewModel(${viewModelClass} viewModel);

}