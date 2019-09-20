package ${packageName}.${activityPackage}.${newPackage};

import androidx.lifecycle.ViewModel;

import javax.inject.Inject;

import io.reactivex.disposables.CompositeDisposable;

public class ${viewModelClass} extends ViewModel {

    private CompositeDisposable disposable;
    private SingleLiveEvent<${statusClass}> status;

    @Inject
    ${viewModelClass}() {
        this.disposable = new CompositeDisposable();
        status = new SingleLiveEvent<>();
    }


    public SingleLiveEvent<${statusClass}> getStatus() {
        return status;
    }

    @Override
    protected void onCleared() {
        super.onCleared();
        if (disposable != null) {
            disposable.clear();
            disposable = null;
        }
    }

}