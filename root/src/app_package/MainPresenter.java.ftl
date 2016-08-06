package ${packageName};

import android.support.annotation.NonNull;
import rx.subscriptions.CompositeSubscription;
import static com.google.common.base.Preconditions.checkNotNull;

/**
 * Presenter
 */
public class ${PresenterName} implements ${ContractName}.Presenter {
    private ${ContractName}.View mLoginView;
    private CompositeSubscription mSubscription;

    public ${PresenterName}(@NonNull ${ContractName}.View ${activity_layout}View) {
        mLoginView = checkNotNull(${activity_layout}View);
        mSubscription = new CompositeSubscription();
        mLoginView.setPresenter(this);
    }

    @Override
    public void subscribe() {

    }

    @Override
    public void unsubscribe() {
        mSubscription.clear();
    }
}
