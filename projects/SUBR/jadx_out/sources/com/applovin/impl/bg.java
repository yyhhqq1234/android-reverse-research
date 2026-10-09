package com.applovin.impl;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.R;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: loaded from: classes.dex */
public class bg extends cc {
    private final je n;
    private final Context o;

    @Override // com.applovin.impl.cc
    public int e() {
        return t3.a(R.color.applovin_sdk_disclosureButtonColor, this.o);
    }

    public String toString() {
        return "MediatedNetworkListItemViewModel{text=" + ((Object) this.c) + ", detailText=" + ((Object) this.d) + ", network=" + this.n + "}";
    }

    public bg(je jeVar, Context context) {
        super(cc.c.DETAIL);
        this.n = jeVar;
        this.o = context;
        this.c = t();
        this.d = s();
    }

    public je r() {
        return this.n;
    }

    @Override // com.applovin.impl.cc
    public boolean o() {
        return this.n.q() != je.a.MISSING;
    }

    @Override // com.applovin.impl.cc
    public int h() {
        int iH = this.n.h();
        return iH > 0 ? iH : R.drawable.applovin_ic_mediation_placeholder;
    }

    @Override // com.applovin.impl.cc
    public int d() {
        return o() ? R.drawable.applovin_ic_disclosure_arrow : super.h();
    }

    private SpannedString t() {
        return StringUtils.createSpannedString(this.n.g(), o() ? ViewCompat.MEASURED_STATE_MASK : -7829368, 18, 1);
    }

    private SpannedString s() {
        if (!o()) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) u());
        spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
        spannableStringBuilder.append((CharSequence) q());
        if (this.n.q() == je.a.INVALID_INTEGRATION) {
            spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString("Invalid Integration", SupportMenu.CATEGORY_MASK));
        }
        return new SpannedString(spannableStringBuilder);
    }

    private SpannedString u() {
        if (this.n.E()) {
            if (!StringUtils.isValidString(this.n.p())) {
                return StringUtils.createListItemDetailSpannedString(this.n.A() ? "Retrieving SDK Version..." : "SDK Found", ViewCompat.MEASURED_STATE_MASK);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("SDK\t\t\t\t\t  ", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.n.p(), ViewCompat.MEASURED_STATE_MASK));
            return new SpannedString(spannableStringBuilder);
        }
        return StringUtils.createListItemDetailSpannedString("SDK Missing", SupportMenu.CATEGORY_MASK);
    }

    private SpannedString q() {
        if (this.n.A()) {
            if (!TextUtils.isEmpty(this.n.c())) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("ADAPTER  ", -7829368));
                spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.n.c(), ViewCompat.MEASURED_STATE_MASK));
                if (this.n.B()) {
                    spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("  LATEST  ", Color.rgb(255, WorkQueueKt.MASK, 0)));
                    spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.n.k(), ViewCompat.MEASURED_STATE_MASK));
                }
                return new SpannedString(spannableStringBuilder);
            }
            return StringUtils.createListItemDetailSpannedString("Adapter Found", ViewCompat.MEASURED_STATE_MASK);
        }
        return StringUtils.createListItemDetailSpannedString("Adapter Missing", SupportMenu.CATEGORY_MASK);
    }
}
