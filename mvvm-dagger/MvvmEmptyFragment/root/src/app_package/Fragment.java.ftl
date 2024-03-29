package ${packageName}.${newPackage};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

public class ${fragmentClass} extends BaseFragment<${className}ViewModel, Fragment${className}Binding> {

    public ${fragmentClass}() {
        // Required empty public constructor
    }

    
    @Override
    protected Class<${className}ViewModel> getViewModel() {
        return ${className}ViewModel.class;
    }

    @Override
    protected int getLayoutRes() {
        return R.layout.${layoutName};
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        super.onCreateView(inflater, container, savedInstanceState);
        viewModel.getStatus().observe(this, this::statusObserver);

        return dataBinding.getRoot();
    }

    private void statusObserver(${className}Status status) {

        switch (status) {
            case PROCESSING:
                Toast.makeText(getContext(), "PROCESSING .....", Toast.LENGTH_SHORT).show();
                break;
            case IDLE:
                Toast.makeText(getContext(), "IDLE .....", Toast.LENGTH_SHORT).show();
                break;
        }
    }

}