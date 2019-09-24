package ${packageName}.di.components;

import android.app.Application;

import ${packageName}.App;
import ${packageName}.di.modules.ActivityBuilderModule;
import ${packageName}.di.modules.AppModule;

import javax.inject.Singleton;

import dagger.BindsInstance;
import dagger.Component;
import dagger.android.AndroidInjectionModule;

@Singleton
@Component(modules = {
        AndroidInjectionModule.class,
        ActivityBuilderModule.class,
        AppModule.class
})
public interface AppComponent {

    @Component.Builder
    interface Builder {
        @BindsInstance
        Builder application(Application application);

        AppComponent build();
    }

    void inject(SarteApp app);
}