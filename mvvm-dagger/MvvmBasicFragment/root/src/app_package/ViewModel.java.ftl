package ${packageName};

public class ${className}ViewModel extends ViewModel {

    private CompositeDisposable disposable;
    private SingleLiveEvent<${className}Status> status;

    @Inject
    ${className}ViewModel() {
        this.disposable = new CompositeDisposable();
        status = new SingleLiveEvent<>();
    }


    public SingleLiveEvent<${className}Status> getStatus() {
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