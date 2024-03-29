package ${packageName}.${newPackage};

import android.os.Bundle;
import android.widget.Toast;

import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

public class ${className}Activity extends BaseActivity<${className}ViewModel, Activity${className}Binding> implements ${className}ActivityListener {
    
    private NavController navController;
    private AppBarConfiguration appBarConfiguration;

    @Override
    protected Class<${className}ViewModel> getViewModel() {
        return ${className}ViewModel.class;
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
        NavigationUI.setupWithNavController(dataBinding.navView, navController);
        appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph())
        .setDrawerLayout(dataBinding.drawer).build();
        NavigationUI.setupActionBarWithNavController(this, navController, appBarConfiguration);
    }

    private void statusObserver(${className}Status status) {
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