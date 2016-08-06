package ${packageName};

import android.os.Bundle;

import ${applicationPackage}.R;
import ${applicationPackage}.base.BaseActivity;
import ${applicationPackage}.util.ActivityUtils;

public class ${ActivityName} extends BaseActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_${activity_layout});


        ${FragmentName} ${fragment_layout}Fragment =
                (${FragmentName}) getFragmentManager().findFragmentById(R.id.id_fragment_container);

        if (${fragment_layout}Fragment == null) {
            ${fragment_layout}Fragment = ${FragmentName}.newInstance();
            ActivityUtils.addFragmentToActivity(getFragmentManager(), ${fragment_layout}Fragment, R.id.id_fragment_container);
        }
        new ${PresenterName}(${fragment_layout}Fragment);
    }
}
