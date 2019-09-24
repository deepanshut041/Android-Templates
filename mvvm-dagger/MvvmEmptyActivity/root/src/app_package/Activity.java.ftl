package ${packageName}.${newPackage};

import android.os.Bundle;
import android.widget.Toast;

import com.squrlabs.mvvm.ui.BaseActivity;

public class ${activityClass} extends BaseActivity<${viewModelClass}, ${bindingClass}> implements ${listenerClass} {
    
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

}