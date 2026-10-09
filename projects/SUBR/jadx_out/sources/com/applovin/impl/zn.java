package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class zn extends xa {
    public static final Parcelable.Creator<zn> CREATOR = new a();
    public final String b;
    public final String c;

    @Override // com.applovin.impl.xa
    public String toString() {
        return this.a + ": description=" + this.b + ": value=" + this.c;
    }

    zn(Parcel parcel) {
        super((String) xp.a((Object) parcel.readString()));
        this.b = parcel.readString();
        this.c = (String) xp.a((Object) parcel.readString());
    }

    public zn(String str, String str2, String str3) {
        super(str);
        this.b = str2;
        this.c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zn.class != obj.getClass()) {
            return false;
        }
        zn znVar = (zn) obj;
        return xp.a((Object) this.a, (Object) znVar.a) && xp.a((Object) this.b, (Object) znVar.b) && xp.a((Object) this.c, (Object) znVar.c);
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public zn[] newArray(int i) {
            return new zn[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public zn createFromParcel(Parcel parcel) {
            return new zn(parcel);
        }
    }

    private static List a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.applovin.impl.xa, com.applovin.impl.af.b
    public void a(ud.b bVar) {
        String str = this.a;
        str.hashCode();
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    b = 0;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    b = 1;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    b = 2;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    b = 3;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    b = 4;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    b = 5;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    b = 6;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    b = 7;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    b = 8;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    b = 9;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    b = 10;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    b = 11;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    b = 12;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    b = 13;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    b = 14;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    b = 15;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    b = 16;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    b = 17;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    b = 18;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    b = 19;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    b = 20;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    b = 21;
                }
                break;
        }
        try {
            switch (b) {
                case 0:
                case 10:
                    bVar.b(this.c);
                    break;
                case 1:
                case 11:
                    bVar.e(this.c);
                    break;
                case 2:
                case 12:
                    bVar.d(Integer.valueOf(Integer.parseInt(this.c.substring(2, 4)))).c(Integer.valueOf(Integer.parseInt(this.c.substring(0, 2))));
                    break;
                case 3:
                case 17:
                    bVar.c(this.c);
                    break;
                case 4:
                case 18:
                    bVar.a(this.c);
                    break;
                case 5:
                case 19:
                    bVar.f(this.c);
                    break;
                case 6:
                case 20:
                    String[] strArrA = xp.a(this.c, UnityAdsConstants.DefaultUrls.AD_ASSET_PATH);
                    bVar.k(Integer.valueOf(Integer.parseInt(strArrA[0]))).j(strArrA.length > 1 ? Integer.valueOf(Integer.parseInt(strArrA[1])) : null);
                    break;
                case 7:
                case 16:
                    bVar.k(this.c);
                    break;
                case 8:
                case 15:
                    bVar.l(this.c);
                    break;
                case 9:
                case 21:
                    bVar.e(Integer.valueOf(Integer.parseInt(this.c)));
                    break;
                case 13:
                    List listA = a(this.c);
                    int size = listA.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                bVar.c((Integer) listA.get(2));
                            }
                        }
                        bVar.d((Integer) listA.get(1));
                    }
                    bVar.e((Integer) listA.get(0));
                    break;
                case 14:
                    List listA2 = a(this.c);
                    int size2 = listA2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                bVar.f((Integer) listA2.get(2));
                            }
                        }
                        bVar.g((Integer) listA2.get(1));
                    }
                    bVar.h((Integer) listA2.get(0));
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }
}
