package ${packageName}.${newPackage};

import androidx.lifecycle.ViewModel;

import dagger.Binds;
import dagger.Module;
import dagger.android.ContributesAndroidInjector;
import dagger.multibindings.IntoMap;

import ${packageName}.${newPackage}.home.HomeFragment;
import ${packageName}.${newPackage}.home.HomeFragmentModule;
import ${packageName}.${newPackage}.gallery.GalleryFragment;
import ${packageName}.${newPackage}.gallery.GalleryFragmentModule;
import ${packageName}.${newPackage}.slideshow.SlideshowFragment;
import ${packageName}.${newPackage}.slideshow.SlideshowFragmentModule;
import ${packageName}.${newPackage}.tools.ToolsFragment;
import ${packageName}.${newPackage}.tools.ToolsFragmentModule;
import ${packageName}.${newPackage}.share.ShareFragment;
import ${packageName}.${newPackage}.share.ShareFragmentModule;
import ${packageName}.${newPackage}.send.SendFragment;
import ${packageName}.${newPackage}.send.SendFragmentModule;

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
    @ContributesAndroidInjector(modules = GalleryFragmentModule.class)
    abstract GalleryFragment galleryFragment();

    @SuppressWarnings("unused")
    @ContributesAndroidInjector(modules = SlideshowFragmentModule.class)
    abstract SlideshowFragment slideshowFragment();

    @SuppressWarnings("unused")
    @ContributesAndroidInjector(modules = ToolsFragmentModule.class)
    abstract ToolsFragment toolsFragment();

    @SuppressWarnings("unused")
    @ContributesAndroidInjector(modules = ShareFragmentModule.class)
    abstract ShareFragment shareFragment();

    @SuppressWarnings("unused")
    @ContributesAndroidInjector(modules = SendFragmentModule.class)
    abstract SendFragment sendFragment();

}