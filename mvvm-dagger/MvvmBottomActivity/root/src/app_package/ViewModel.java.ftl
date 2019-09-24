package ${packageName}.${newPackage};

import androidx.lifecycle.ViewModel;

import com.squrlabs.mvvm.utils.SingleLiveEvent;

import javax.inject.Inject;

public class ${viewModelClass} extends ViewModel {

    private SingleLiveEvent<${statusClass}> status;

    @Inject
    ${viewModelClass}() {
        status = new SingleLiveEvent<>();
    }


    public SingleLiveEvent<${statusClass}> getStatus() {
        return status;
    }

    @Override
    protected void onCleared() {
        super.onCleared();
    }

}