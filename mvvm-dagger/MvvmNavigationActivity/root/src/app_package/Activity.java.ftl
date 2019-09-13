package ${packageName}.${newPackage};

import android.os.Bundle;
import android.widget.Toast;

public class ${className}Activity extends BaseActivity<${className}ViewModel, Activity${className}Binding> implements NavigationView.OnNavigationItemSelectedListener, ${className}ActivityListener {
    
    ActionBarDrawerToggle mToggle;

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
        // Navigation Drawer settings
        mToggle = new ActionBarDrawerToggle(this, dataBinding.drawer, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        dataBinding.drawer.addDrawerListener(mToggle);
        mToggle.syncState();

        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        dataBinding.navView.setNavigationItemSelectedListener(this);

        viewModel.getStatus().observe(this, this::statusObserver);
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
    public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.nav_home:
                Toast.makeText(this, "Home", Toast.LENGTH_SHORT).show();
                break;
            default:
                Toast.makeText(this, "No Action", Toast.LENGTH_SHORT).show();
                break;

        }
        dataBinding.drawer.closeDrawers();
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (mToggle.onOptionsItemSelected(item)) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

}