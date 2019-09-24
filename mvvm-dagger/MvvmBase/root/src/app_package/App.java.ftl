package ${packageName};

import android.app.Activity;

import androidx.multidex.MultiDexApplication;

import ${packageName}.di.components.DaggerAppComponent;

import javax.inject.Inject;

import dagger.android.AndroidInjector;
import dagger.android.DispatchingAndroidInjector;
import dagger.android.HasActivityInjector;

/**
 * Custom application
 */
public class App extends MultiDexApplication implements HasActivityInjector {

    // App Instance to context
    private static App appInstance;

    // Getter and setter for AppInstance
    public static App getAppContext() {
        return appInstance;
    }

    private static synchronized void setInstance(App app) {
        appInstance = app;
    }

    @Inject
    DispatchingAndroidInjector<Activity> activityDispatchingInjector;

    @Override
    public void onCreate() {
        super.onCreate();

        DaggerAppComponent
            .builder()
            .application(this)
            .build()
            .inject(this);

        setInstance(this);
    }


    @Override
    public AndroidInjector<Activity> activityInjector() {
        return activityDispatchingInjector;
    }
}