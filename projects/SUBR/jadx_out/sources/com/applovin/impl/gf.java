package com.applovin.impl;

import com.google.common.net.HttpHeaders;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes.dex */
abstract class gf {
    static final String[] a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", HttpHeaders.TRAILER, "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    public static af.b b(ah ahVar) {
        int iD = ahVar.d() + ahVar.j();
        int iJ = ahVar.j();
        int i = (iJ >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = 16777215 & iJ;
                if (i2 == 6516084) {
                    u3 u3VarA = a(iJ, ahVar);
                    ahVar.f(iD);
                    return u3VarA;
                }
                if (i2 == 7233901 || i2 == 7631467) {
                    zn znVarB = b(iJ, "TIT2", ahVar);
                    ahVar.f(iD);
                    return znVarB;
                }
                if (i2 == 6516589 || i2 == 7828084) {
                    zn znVarB2 = b(iJ, "TCOM", ahVar);
                    ahVar.f(iD);
                    return znVarB2;
                }
                if (i2 == 6578553) {
                    zn znVarB3 = b(iJ, "TDRC", ahVar);
                    ahVar.f(iD);
                    return znVarB3;
                }
                if (i2 == 4280916) {
                    zn znVarB4 = b(iJ, "TPE1", ahVar);
                    ahVar.f(iD);
                    return znVarB4;
                }
                if (i2 == 7630703) {
                    zn znVarB5 = b(iJ, "TSSE", ahVar);
                    ahVar.f(iD);
                    return znVarB5;
                }
                if (i2 == 6384738) {
                    zn znVarB6 = b(iJ, "TALB", ahVar);
                    ahVar.f(iD);
                    return znVarB6;
                }
                if (i2 == 7108978) {
                    zn znVarB7 = b(iJ, "USLT", ahVar);
                    ahVar.f(iD);
                    return znVarB7;
                }
                if (i2 == 6776174) {
                    zn znVarB8 = b(iJ, "TCON", ahVar);
                    ahVar.f(iD);
                    return znVarB8;
                }
                if (i2 == 6779504) {
                    zn znVarB9 = b(iJ, "TIT1", ahVar);
                    ahVar.f(iD);
                    return znVarB9;
                }
            } else {
                if (iJ == 1735291493) {
                    zn znVarC = c(ahVar);
                    ahVar.f(iD);
                    return znVarC;
                }
                if (iJ == 1684632427) {
                    zn znVarA = a(iJ, "TPOS", ahVar);
                    ahVar.f(iD);
                    return znVarA;
                }
                if (iJ == 1953655662) {
                    zn znVarA2 = a(iJ, "TRCK", ahVar);
                    ahVar.f(iD);
                    return znVarA2;
                }
                if (iJ == 1953329263) {
                    xa xaVarA = a(iJ, "TBPM", ahVar, true, false);
                    ahVar.f(iD);
                    return xaVarA;
                }
                if (iJ == 1668311404) {
                    xa xaVarA2 = a(iJ, "TCMP", ahVar, true, true);
                    ahVar.f(iD);
                    return xaVarA2;
                }
                if (iJ == 1668249202) {
                    v0 v0VarA = a(ahVar);
                    ahVar.f(iD);
                    return v0VarA;
                }
                if (iJ == 1631670868) {
                    zn znVarB10 = b(iJ, "TPE2", ahVar);
                    ahVar.f(iD);
                    return znVarB10;
                }
                if (iJ == 1936682605) {
                    zn znVarB11 = b(iJ, "TSOT", ahVar);
                    ahVar.f(iD);
                    return znVarB11;
                }
                if (iJ == 1936679276) {
                    zn znVarB12 = b(iJ, "TSO2", ahVar);
                    ahVar.f(iD);
                    return znVarB12;
                }
                if (iJ == 1936679282) {
                    zn znVarB13 = b(iJ, "TSOA", ahVar);
                    ahVar.f(iD);
                    return znVarB13;
                }
                if (iJ == 1936679265) {
                    zn znVarB14 = b(iJ, "TSOP", ahVar);
                    ahVar.f(iD);
                    return znVarB14;
                }
                if (iJ == 1936679791) {
                    zn znVarB15 = b(iJ, "TSOC", ahVar);
                    ahVar.f(iD);
                    return znVarB15;
                }
                if (iJ == 1920233063) {
                    xa xaVarA3 = a(iJ, "ITUNESADVISORY", ahVar, false, false);
                    ahVar.f(iD);
                    return xaVarA3;
                }
                if (iJ == 1885823344) {
                    xa xaVarA4 = a(iJ, "ITUNESGAPLESS", ahVar, false, true);
                    ahVar.f(iD);
                    return xaVarA4;
                }
                if (iJ == 1936683886) {
                    zn znVarB16 = b(iJ, "TVSHOWSORT", ahVar);
                    ahVar.f(iD);
                    return znVarB16;
                }
                if (iJ == 1953919848) {
                    zn znVarB17 = b(iJ, "TVSHOW", ahVar);
                    ahVar.f(iD);
                    return znVarB17;
                }
                if (iJ == 757935405) {
                    xa xaVarA5 = a(ahVar, iD);
                    ahVar.f(iD);
                    return xaVarA5;
                }
            }
            oc.a("MetadataUtil", "Skipped unknown metadata entry: " + j1.a(iJ));
            ahVar.f(iD);
            return null;
        } catch (Throwable th) {
            ahVar.f(iD);
            throw th;
        }
    }

    private static u3 a(int i, ah ahVar) {
        int iJ = ahVar.j();
        if (ahVar.j() == 1684108385) {
            ahVar.g(8);
            String strB = ahVar.b(iJ - 16);
            return new u3("und", strB, strB);
        }
        oc.d("MetadataUtil", "Failed to parse comment attribute: " + j1.a(i));
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0011  */
    private static zn c(ah ahVar) {
        String str;
        int iD = d(ahVar);
        if (iD > 0) {
            String[] strArr = a;
            if (iD <= strArr.length) {
                str = strArr[iD - 1];
            } else {
                str = null;
            }
        } else {
            str = null;
        }
        if (str != null) {
            return new zn("TCON", null, str);
        }
        oc.d("MetadataUtil", "Failed to parse standard genre code");
        return null;
    }

    private static int d(ah ahVar) {
        ahVar.g(4);
        if (ahVar.j() == 1684108385) {
            ahVar.g(8);
            return ahVar.w();
        }
        oc.d("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    private static v0 a(ah ahVar) {
        String str;
        int iJ = ahVar.j();
        if (ahVar.j() == 1684108385) {
            int iB = j1.b(ahVar.j());
            if (iB == 13) {
                str = "image/jpeg";
            } else {
                str = iB == 14 ? "image/png" : null;
            }
            if (str == null) {
                oc.d("MetadataUtil", "Unrecognized cover art flags: " + iB);
                return null;
            }
            ahVar.g(4);
            int i = iJ - 16;
            byte[] bArr = new byte[i];
            ahVar.a(bArr, 0, i);
            return new v0(str, null, 3, bArr);
        }
        oc.d("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    private static zn a(int i, String str, ah ahVar) {
        int iJ = ahVar.j();
        if (ahVar.j() == 1684108385 && iJ >= 22) {
            ahVar.g(10);
            int iC = ahVar.C();
            if (iC > 0) {
                String str2 = "" + iC;
                int iC2 = ahVar.C();
                if (iC2 > 0) {
                    str2 = str2 + UnityAdsConstants.DefaultUrls.AD_ASSET_PATH + iC2;
                }
                return new zn(str, null, str2);
            }
        }
        oc.d("MetadataUtil", "Failed to parse index/count attribute: " + j1.a(i));
        return null;
    }

    private static zn b(int i, String str, ah ahVar) {
        int iJ = ahVar.j();
        if (ahVar.j() == 1684108385) {
            ahVar.g(8);
            return new zn(str, null, ahVar.b(iJ - 16));
        }
        oc.d("MetadataUtil", "Failed to parse text attribute: " + j1.a(i));
        return null;
    }

    private static xa a(ah ahVar, int i) {
        String strB = null;
        String strB2 = null;
        int i2 = -1;
        int i3 = -1;
        while (ahVar.d() < i) {
            int iD = ahVar.d();
            int iJ = ahVar.j();
            int iJ2 = ahVar.j();
            ahVar.g(4);
            if (iJ2 == 1835360622) {
                strB = ahVar.b(iJ - 12);
            } else if (iJ2 == 1851878757) {
                strB2 = ahVar.b(iJ - 12);
            } else {
                if (iJ2 == 1684108385) {
                    i2 = iD;
                    i3 = iJ;
                }
                ahVar.g(iJ - 12);
            }
        }
        if (strB == null || strB2 == null || i2 == -1) {
            return null;
        }
        ahVar.f(i2);
        ahVar.g(16);
        return new rb(strB, strB2, ahVar.b(i3 - 16));
    }

    public static ed a(ah ahVar, int i, String str) {
        while (true) {
            int iD = ahVar.d();
            if (iD >= i) {
                return null;
            }
            int iJ = ahVar.j();
            if (ahVar.j() == 1684108385) {
                int iJ2 = ahVar.j();
                int iJ3 = ahVar.j();
                int i2 = iJ - 16;
                byte[] bArr = new byte[i2];
                ahVar.a(bArr, 0, i2);
                return new ed(str, bArr, iJ3, iJ2);
            }
            ahVar.f(iD + iJ);
        }
    }

    private static xa a(int i, String str, ah ahVar, boolean z, boolean z2) {
        int iD = d(ahVar);
        if (z2) {
            iD = Math.min(1, iD);
        }
        if (iD >= 0) {
            if (z) {
                return new zn(str, null, Integer.toString(iD));
            }
            return new u3("und", str, Integer.toString(iD));
        }
        oc.d("MetadataUtil", "Failed to parse uint8 attribute: " + j1.a(i));
        return null;
    }

    public static void a(int i, y9 y9Var, e9.b bVar) {
        if (i == 1 && y9Var.a()) {
            bVar.e(y9Var.a).f(y9Var.b);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003c  */
    public static void a(int i, af afVar, af afVar2, e9.b bVar, af... afVarArr) {
        af afVar3 = new af(new af.b[0]);
        if (i == 1) {
            if (afVar == null) {
                afVar = afVar3;
                break;
            }
        } else {
            if (i != 2 || afVar2 == null) {
                afVar = afVar3;
                break;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= afVar2.c()) {
                    afVar = afVar3;
                    break;
                }
                af.b bVarA = afVar2.a(i2);
                if (bVarA instanceof ed) {
                    ed edVar = (ed) bVarA;
                    if ("com.android.capture.fps".equals(edVar.a)) {
                        afVar = new af(edVar);
                        break;
                    }
                }
                i2++;
            }
        }
        for (af afVar4 : afVarArr) {
            afVar = afVar.a(afVar4);
        }
        if (afVar.c() > 0) {
            bVar.a(afVar);
        }
    }
}
