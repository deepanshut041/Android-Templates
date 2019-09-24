package ${packageName}.${newPackage};

import androidx.lifecycle.ViewModel;

import com.squrlabs.mvvm.di.viewmodel.ViewModelKey;

import dagger.Binds;
import dagger.Module;
import dagger.android.ContributesAndroidInjector;
import dagger.multibindings.IntoMap;

import ${packageName}.${newPackage}.notifications.NotificationsFragment;
import ${packageName}.${newPackage}.notifications.NotificationsFragmentModule;
import ${packageName}.${newPackage}.home.HomeFragment;
import ${packageName}.${newPackage}.home.HomeFragmentModule;
import ${packageName}.${newPackage}.dashboard.DashboardFragment;
import ${packageName}.${newPackage}.dashboard.DashboardFragmentModule;

@Module
public abstract class ${moduleClass} {
    @Binds
    abstract ${listenerClass} providesFragmentListener(${activityClass} activity);

    @Binds
    @IntoMap
    @ViewModelKey(${viewModelClass}.class)
    @SuppressWarnings("unused")
    abstract ViewModel viewModel(${viewModelClass} viewModel);

    @SuppressWarnings("unused")
    @ContributesAndroidInjector(modules = HomeFragmentModule.class)
    abstract HomeFragment homeFragment();

    @SuppressWarnings("unused")
    @ContributesAndroidInjector(modules = DashboardFragmentModule.class)
    abstract DashboardFragment dashboardFragment();

    @SuppressWarnings("unused")
    @ContributesAndroidInjector(modules = NotificationsFragmentModule.class)
    abstract NotificationsFragment notificationsFragment();

}