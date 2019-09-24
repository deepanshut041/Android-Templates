package ${packageName}.${newPackage};

import android.os.Bundle;
import android.widget.Toast;

import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.squrlabs.mvvm.ui.BaseActivity;

public class ${activityClass} extends BaseActivity<${viewModelClass}, ${bindingClass}> implements ${listenerClass} {
    
    private NavController navController;
    private AppBarConfiguration appBarConfiguration;

    @Override
    protected Class<${viewModelClass}> getViewModel() {
        return ${viewModelClass}.class;
    }

    @Override
    protected int getLayoutRes() {
        return R.layout.${layoutName};
    }

    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        viewModel.getStatus().observe(this, this::statusObserver);

        navController = Navigation.findNavController(this, R.id.fragment);
        NavigationUI.setupWithNavController(dataBinding.bottomNav, navController);
        appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        NavigationUI.setupActionBarWithNavController(this, navController, appBarConfiguration);
    }

    private void statusObserver(${statusClass} status) {

        switch (status) {
            case PROCESSING:
                Toast.makeText(this, "PROCESSING .....", Toast.LENGTH_SHORT).show();
                break;
            case IDLE:
                Toast.makeText(this, "IDLE .....", Toast.LENGTH_SHORT).show();
                break;
        }
    }

    @Override
    public boolean onSupportNavigateUp() {
        return NavigationUI.navigateUp(navController, appBarConfiguration)
                || super.onSupportNavigateUp();
    }

}