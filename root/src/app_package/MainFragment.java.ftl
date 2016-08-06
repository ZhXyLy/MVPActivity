package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;

import ${applicationPackage}.R;
import ${applicationPackage}.base.BaseFragment;

import static com.google.common.base.Preconditions.checkNotNull;

/**
 * View
 */
public class ${FragmentName} extends BaseFragment implements ${ContractName}.View {
    private ${ContractName}.Presenter mPresenter;

    public static ${FragmentName} newInstance() {
        return new ${FragmentName}();
    }

    @Override
    public void onResume() {
        super.onResume();
        mPresenter.subscribe();
    }

    @Override
    public void onPause() {
        super.onPause();
        mPresenter.unsubscribe();
    }

    @Override
    public void setPresenter(${ContractName}.Presenter presenter) {
        mPresenter = checkNotNull(presenter);
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_${fragment_layout}, container, false);
        return root;
    }
}
