package ${packageName}.${newPackage};

import androidx.lifecycle.ViewModel;

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
public abstract class ${className}ActivityModule {
    @Binds
    abstract ${className}ActivityListener providesFragmentListener(${className}Activity activity);

    @Binds
    @IntoMap
    @ViewModelKey(${className}ViewModel.class)
    @SuppressWarnings("unused")
    abstract ViewModel viewModel(${className}ViewModel viewModel);

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