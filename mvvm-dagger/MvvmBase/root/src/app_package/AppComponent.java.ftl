package ${packageName}.di.components;

import android.app.Application;

import ${packageName}.App;
import ${packageName}.di.modules.ActivityBuilderModule;
import ${packageName}.di.modules.AppModule;

import com.squrlabs.mvvm.di.viewmodel.ViewModelModule;

import javax.inject.Singleton;

import dagger.BindsInstance;
import dagger.Component;
import dagger.android.AndroidInjectionModule;

@Singleton
@Component(modules = {
        AndroidInjectionModule.class,
        ActivityBuilderModule.class,
        ViewModelModule.class,
        AppModule.class
})
public interface AppComponent {

    @Component.Builder
    interface Builder {
        @BindsInstance
        Builder application(Application application);

        AppComponent build();
    }

    void inject(App app);
}