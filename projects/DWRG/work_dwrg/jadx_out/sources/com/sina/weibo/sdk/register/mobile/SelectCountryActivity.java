package com.sina.weibo.sdk.register.mobile;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.sina.weibo.sdk.component.view.TitleBar;
import com.sina.weibo.sdk.register.mobile.LetterIndexBar;
import com.sina.weibo.sdk.utils.ResourceManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class SelectCountryActivity extends Activity implements LetterIndexBar.OnIndexChangeListener {
    private static final String CHINA_CN = "中国";
    private static final String CHINA_EN = "China";
    private static final String CHINA_TW = "中國";
    public static final String EXTRA_COUNTRY_CODE = "code";
    public static final String EXTRA_COUNTRY_NAME = "name";
    private static final String INFO_CN = "常用";
    private static final String INFO_EN = "Common";
    private static final String INFO_TW = "常用";
    private static final String SELECT_COUNTRY_EN = "Region";
    private static final String SELECT_COUNTRY_ZH_CN = "选择国家";
    private static final String SELECT_COUNTRY_ZH_TW = "選擇國家";
    private List<Country>[] arrSubCountry;
    String countryStr = "";
    private List<IndexCountry> indexCountries = new ArrayList();
    private CountryAdapter mAdapter;
    private List<Country> mCountries;
    private FrameLayout mFrameLayout;
    private LetterIndexBar mLetterIndexBar;
    private ListView mListView;
    private RelativeLayout mMainLayout;
    private CountryList result;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
    }

    private void initView() {
        this.mMainLayout = new RelativeLayout(this);
        RelativeLayout.LayoutParams mMainLayoutLp = new RelativeLayout.LayoutParams(-1, -1);
        this.mMainLayout.setLayoutParams(mMainLayoutLp);
        TitleBar titleBar = new TitleBar(this);
        titleBar.setId(1);
        titleBar.setLeftBtnBg(ResourceManager.createStateListDrawable(this, "weibosdk_navigationbar_back.png", "weibosdk_navigationbar_back_highlighted.png"));
        titleBar.setTitleBarText(ResourceManager.getString(this, SELECT_COUNTRY_EN, SELECT_COUNTRY_ZH_CN, SELECT_COUNTRY_ZH_TW));
        titleBar.setTitleBarClickListener(new TitleBar.ListenerOnTitleBtnClicked() { // from class: com.sina.weibo.sdk.register.mobile.SelectCountryActivity.1
            @Override // com.sina.weibo.sdk.component.view.TitleBar.ListenerOnTitleBtnClicked
            public void onLeftBtnClicked() {
                SelectCountryActivity.this.setResult(0);
                SelectCountryActivity.this.finish();
            }
        });
        this.mMainLayout.addView(titleBar);
        this.mFrameLayout = new FrameLayout(this);
        RelativeLayout.LayoutParams mFrameLp = new RelativeLayout.LayoutParams(-1, -1);
        mFrameLp.addRule(3, titleBar.getId());
        this.mFrameLayout.setLayoutParams(mFrameLp);
        this.mMainLayout.addView(this.mFrameLayout);
        this.mListView = new ListView(this);
        AbsListView.LayoutParams mListViewLp = new AbsListView.LayoutParams(-1, -1);
        this.mListView.setLayoutParams(mListViewLp);
        this.mListView.setFadingEdgeLength(0);
        this.mListView.setSelector(new ColorDrawable(0));
        this.mListView.setDividerHeight(ResourceManager.dp2px(this, 1));
        this.mListView.setCacheColorHint(0);
        this.mListView.setDrawSelectorOnTop(false);
        this.mListView.setScrollingCacheEnabled(false);
        this.mListView.setScrollbarFadingEnabled(false);
        this.mListView.setVerticalScrollBarEnabled(false);
        this.mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.sina.weibo.sdk.register.mobile.SelectCountryActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Country country = (Country) SelectCountryActivity.this.mAdapter.getItem(position);
                if (country != null) {
                    Intent intent = new Intent();
                    intent.putExtra("code", country.getCode());
                    intent.putExtra("name", country.getName());
                    SelectCountryActivity.this.setResult(-1, intent);
                    SelectCountryActivity.this.finish();
                }
            }
        });
        this.mFrameLayout.addView(this.mListView);
        this.mAdapter = new CountryAdapter(this, null);
        this.mListView.setAdapter((ListAdapter) this.mAdapter);
        this.mLetterIndexBar = new LetterIndexBar(this);
        this.mLetterIndexBar.setIndexChangeListener(this);
        FrameLayout.LayoutParams mLetterIndexBarLp = new FrameLayout.LayoutParams(-2, -1);
        mLetterIndexBarLp.gravity = 5;
        this.mLetterIndexBar.setLayoutParams(mLetterIndexBarLp);
        this.mFrameLayout.addView(this.mLetterIndexBar);
        PinyinUtils.getInstance(this);
        Locale locale = ResourceManager.getLanguage();
        if (Locale.SIMPLIFIED_CHINESE.equals(locale)) {
            this.countryStr = ResourceManager.readCountryFromAsset(this, "countryCode.txt");
        } else if (Locale.TRADITIONAL_CHINESE.equals(locale)) {
            this.countryStr = ResourceManager.readCountryFromAsset(this, "countryCodeTw.txt");
        } else {
            this.countryStr = ResourceManager.readCountryFromAsset(this, "countryCodeEn.txt");
        }
        this.result = new CountryList(this.countryStr);
        this.mCountries = this.result.countries;
        this.arrSubCountry = subCountries(this.mCountries);
        this.indexCountries = compose(this.arrSubCountry);
        this.mAdapter.notifyDataSetChanged();
        setContentView(this.mMainLayout);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.sina.weibo.sdk.register.mobile.LetterIndexBar.OnIndexChangeListener
    public void onIndexChange(int index) {
        if (this.arrSubCountry != null && index < this.arrSubCountry.length && this.arrSubCountry[index] != null) {
            this.mListView.setSelection(this.indexCountries.indexOf(new IndexCountry(index, -1)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class IndexCountry {
        int indexInList;
        int indexInListArray;

        IndexCountry(int indexInListArray, int indexInList) {
            this.indexInListArray = indexInListArray;
            this.indexInList = indexInList;
        }

        public boolean equals(Object o) {
            if (!(o instanceof IndexCountry) || this.indexInList != -1) {
                return false;
            }
            IndexCountry another = (IndexCountry) o;
            return this.indexInListArray == another.indexInListArray && this.indexInList == another.indexInList;
        }
    }

    private List<Country>[] subCountries(List<Country> countries) {
        List[] arr = new ArrayList[27];
        Country commonCountry = new Country();
        commonCountry.setCode(Country.CHINA_CODE);
        commonCountry.setName(ResourceManager.getString(this, CHINA_EN, CHINA_CN, CHINA_TW));
        arr[0] = new ArrayList();
        arr[0].add(commonCountry);
        for (int i = 0; i < countries.size(); i++) {
            Country country = countries.get(i);
            if (country.getCode().equals("00852") || country.getCode().equals("00853") || country.getCode().equals("00886")) {
                arr[0].add(country);
            } else {
                int index = (country.getPinyin().charAt(0) - 'a') + 1;
                if (arr[index] == null) {
                    arr[index] = new ArrayList();
                }
                arr[index].add(country);
            }
        }
        return arr;
    }

    private List<IndexCountry> compose(List<Country>[] listArr) {
        List<IndexCountry> indexFollows = new ArrayList<>();
        if (listArr != null) {
            for (int i = 0; i < listArr.length; i++) {
                List<Country> list = listArr[i];
                if (list != null && list.size() > 0) {
                    for (int j = 0; j < list.size(); j++) {
                        if (j == 0) {
                            indexFollows.add(new IndexCountry(i, -1));
                        }
                        indexFollows.add(new IndexCountry(i, j));
                    }
                }
            }
        }
        return indexFollows;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class CountryAdapter extends BaseAdapter {
        private CountryAdapter() {
        }

        /* synthetic */ CountryAdapter(SelectCountryActivity selectCountryActivity, CountryAdapter countryAdapter) {
            this();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (SelectCountryActivity.this.indexCountries != null) {
                return SelectCountryActivity.this.indexCountries.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            if (SelectCountryActivity.this.indexCountries == null || SelectCountryActivity.this.indexCountries.isEmpty() || position == SelectCountryActivity.this.indexCountries.size()) {
                return null;
            }
            IndexCountry indexCountry = (IndexCountry) SelectCountryActivity.this.indexCountries.get(position);
            if (indexCountry.indexInList != -1) {
                return SelectCountryActivity.this.arrSubCountry[indexCountry.indexInListArray].get(indexCountry.indexInList);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            IndexCountry indexCountry = (IndexCountry) SelectCountryActivity.this.indexCountries.get(position);
            if (convertView == null) {
                if (indexCountry.indexInList != -1) {
                    Country coutry = (Country) SelectCountryActivity.this.arrSubCountry[indexCountry.indexInListArray].get(indexCountry.indexInList);
                    View view = new SelectCountryItemView(SelectCountryActivity.this, coutry.getName(), coutry.getCode());
                    return view;
                }
                View view2 = createTitleView(indexCountry.indexInListArray);
                return view2;
            }
            if (indexCountry.indexInList != -1) {
                Country coutry2 = (Country) SelectCountryActivity.this.arrSubCountry[indexCountry.indexInListArray].get(indexCountry.indexInList);
                if (convertView instanceof SelectCountryTitleView) {
                    convertView = new SelectCountryItemView(SelectCountryActivity.this, coutry2.getName(), coutry2.getCode());
                } else {
                    ((SelectCountryItemView) convertView).updateContent(coutry2.getName(), coutry2.getCode());
                }
            } else if (convertView instanceof SelectCountryTitleView) {
                if (indexCountry.indexInListArray == 0) {
                    ((SelectCountryTitleView) convertView).update(ResourceManager.getString(SelectCountryActivity.this, SelectCountryActivity.INFO_EN, "常用", "常用"));
                } else {
                    convertView = createTitleView(indexCountry.indexInListArray);
                }
            } else {
                convertView = createTitleView(indexCountry.indexInListArray);
            }
            View view3 = convertView;
            return view3;
        }

        private SelectCountryTitleView createTitleView(int indexInListArray) {
            SelectCountryTitleView titleView = new SelectCountryTitleView(SelectCountryActivity.this.getApplicationContext());
            if (indexInListArray == 0) {
                titleView.setTitle(ResourceManager.getString(SelectCountryActivity.this, SelectCountryActivity.INFO_EN, "常用", "常用"));
            } else {
                titleView.setTitle(String.valueOf((char) ((indexInListArray + 65) - 1)));
            }
            return titleView;
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
