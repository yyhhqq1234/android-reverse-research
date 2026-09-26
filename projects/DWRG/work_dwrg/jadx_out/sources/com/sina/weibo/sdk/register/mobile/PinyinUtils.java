package com.sina.weibo.sdk.register.mobile;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.sys.a;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class PinyinUtils {
    private static final int DISTINGUISH_LEN = 10;
    private static final char FIRST_CHINA = 19968;
    private static final char LAST_CHINA = 40869;
    private static final char SPECIAL_HANZI = 12295;
    private static final String SPECIAL_HANZI_PINYIN = "LING";
    private static PinyinUtils sInstance;
    private static short[] sPinyinIndex;
    private static final String[] PINYIN = {"a", "ai", a.i, "ang", "ao", "ba", "bai", "ban", "bang", "bao", "bei", "ben", "beng", "bi", "bian", "biao", "bie", "bin", "bing", "bo", "bu", "ca", "cai", "can", "cang", "cao", "ce", "cen", "ceng", "cha", "chai", "chan", "chang", "chao", "che", "chen", "cheng", "chi", "chong", "chou", "chu", "chuai", "chuan", "chuang", "chui", "chun", "chuo", "ci", "cong", "cou", "cu", "cuan", "cui", "cun", "cuo", "da", "dai", "dan", "dang", "dao", "de", "deng", "di", "dia", "dian", "diao", "die", "ding", "diu", "dong", "dou", "du", "duan", "dui", "dun", "duo", "e", "ei", "en", "er", "fa", "fan", "fang", "fei", "fen", "feng", "fo", "fou", "fu", "ga", "gai", "gan", "gang", "gao", "ge", "gei", "gen", "geng", "gong", "gou", "gu", "gua", "guai", "guan", "guang", "gui", "gun", "guo", "ha", "hai", "han", "hang", "hao", "he", "hei", "hen", "heng", "hong", "hou", "hu", "hua", "huai", "huan", "huang", "hui", "hun", "huo", "ji", "jia", "jian", "jiang", "jiao", "jie", "jin", "jing", "jiong", "jiu", "ju", "juan", "jue", "jun", "ka", "kai", "kan", "kang", "kao", "ke", "ken", "keng", "kong", "kou", "ku", "kua", "kuai", "kuan", "kuang", "kui", "kun", "kuo", "la", "lai", "lan", "lang", "lao", "le", "lei", "leng", "li", "lia", "lian", "liang", "liao", "lie", "lin", "ling", "liu", "long", "lou", "lu", "luan", "lun", "luo", "lv", "lve", "m", "ma", "mai", "man", "mang", "mao", "me", "mei", "men", "meng", "mi", "mian", "miao", "mie", "min", "ming", "miu", "mo", "mou", "mu", "na", "nai", "nan", "nang", "nao", "ne", "nei", "nen", "neng", "ng", "ni", "nian", "niang", "niao", "nie", "nin", "ning", "niu", HttpHeaders.Values.NONE, "nong", "nou", "nu", "nuan", "nuo", "nv", "nve", "o", "ou", "pa", "pai", "pan", "pang", "pao", "pei", "pen", "peng", "pi", "pian", "piao", "pie", "pin", "ping", "po", "pou", "pu", "qi", "qia", "qian", "qiang", "qiao", "qie", "qin", "qing", "qiong", "qiu", "qu", "quan", "que", "qun", "ran", "rang", "rao", "re", "ren", "reng", "ri", "rong", "rou", "ru", "ruan", "rui", "run", "ruo", "sa", "sai", "san", "sang", "sao", "se", "sen", "seng", "sha", "shai", "shan", "shang", "shao", "she", "shei", "shen", "sheng", "shi", "shou", "shu", "shua", "shuai", "shuan", "shuang", "shui", "shun", "shuo", "si", "song", "sou", "su", "suan", "sui", "sun", "suo", "ta", "tai", "tan", "tang", "tao", "te", "teng", "ti", "tian", "tiao", "tie", "ting", "tong", "tou", "tu", "tuan", "tui", "tun", "tuo", "wa", "wai", "wan", "wang", "wei", "wen", "weng", "wo", "wu", "xi", "xia", "xian", "xiang", "xiao", "xie", "xin", "xing", "xiong", "xiu", "xu", "xuan", "xue", "xun", "ya", "yan", "yang", "yao", "ye", "yi", "yiao", "yin", "ying", "yo", "yong", "you", "yu", "yuan", "yue", "yun", "za", "zai", "zan", "zang", "zao", "ze", "zei", "zen", "zeng", "zha", "zhai", "zhan", "zhang", "zhao", "zhe", "zhei", "zhen", "zheng", "zhi", "zhong", "zhou", "zhu", "zhua", "zhuai", "zhuan", "zhuang", "zhui", "zhun", "zhuo", "zi", "zong", "zou", "zu", "zuan", "zui", "zun", "zuo"};
    private static volatile boolean isLoad = false;

    /* loaded from: classes.dex */
    public static class MatchedResult {
        public int start = -1;
        public int end = -1;
    }

    private PinyinUtils() {
    }

    public static synchronized PinyinUtils getInstance(Context ctx) {
        PinyinUtils pinyinUtils;
        synchronized (PinyinUtils.class) {
            if (sInstance == null) {
                sInstance = new PinyinUtils();
            }
            loadData(ctx);
            pinyinUtils = sInstance;
        }
        return pinyinUtils;
    }

    private static void loadData(Context ctx) {
        InputStream input = null;
        DataInputStream dataInput = null;
        try {
            try {
                if (isLoad) {
                    if (0 != 0) {
                        try {
                            dataInput.close();
                        } catch (IOException e) {
                        }
                    }
                    if (0 != 0) {
                        input.close();
                    }
                } else {
                    input = ctx.getAssets().open("pinyinindex");
                    DataInputStream dataInput2 = new DataInputStream(input);
                    try {
                        long length = dataInput2.available() >> 1;
                        sPinyinIndex = new short[(int) length];
                        for (int i = 0; i < sPinyinIndex.length; i++) {
                            sPinyinIndex[i] = dataInput2.readShort();
                        }
                        isLoad = true;
                        if (dataInput2 != null) {
                            try {
                                dataInput2.close();
                            } catch (IOException e2) {
                                dataInput = dataInput2;
                            }
                        }
                        if (input != null) {
                            input.close();
                            dataInput = dataInput2;
                        } else {
                            dataInput = dataInput2;
                        }
                    } catch (IOException e3) {
                        dataInput = dataInput2;
                        isLoad = false;
                        if (dataInput != null) {
                            try {
                                dataInput.close();
                            } catch (IOException e4) {
                            }
                        }
                        if (input != null) {
                            input.close();
                        }
                    } catch (Exception e5) {
                        dataInput = dataInput2;
                        isLoad = false;
                        if (dataInput != null) {
                            try {
                                dataInput.close();
                            } catch (IOException e6) {
                            }
                        }
                        if (input != null) {
                            input.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        dataInput = dataInput2;
                        if (dataInput != null) {
                            try {
                                dataInput.close();
                            } catch (IOException e7) {
                                throw th;
                            }
                        }
                        if (input != null) {
                            input.close();
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e8) {
        } catch (Exception e9) {
        }
    }

    private String getPinyin(char ch) {
        if (!isLoad) {
            return "";
        }
        if (ch == 12295) {
            return SPECIAL_HANZI_PINYIN;
        }
        if (ch < 19968 || ch > 40869) {
            return String.valueOf(ch);
        }
        int pos = ch - 19968;
        String pinyin = PINYIN[sPinyinIndex[pos]];
        if (pinyin == null) {
            return "";
        }
        return pinyin;
    }

    public String getPinyin(String s) {
        if (TextUtils.isEmpty(s) || !isLoad) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int len = s.length();
        for (int i = 0; i < len; i++) {
            char c = s.charAt(i);
            sb.append(getPinyin(c));
        }
        return sb.toString();
    }

    public MatchedResult getMatchedResult(String src, String input) {
        MatchedResult result = new MatchedResult();
        result.start = -1;
        result.end = -1;
        if (isLoad && !TextUtils.isEmpty(src) && !TextUtils.isEmpty(input)) {
            String src2 = src.toUpperCase();
            String input2 = input.toUpperCase();
            int n = Math.min(src2.length(), input2.length());
            if (n > 10) {
                src2 = src2.substring(0, 10);
                input2 = input2.substring(0, 10);
            }
            int index = src2.indexOf(input2);
            if (index >= 0) {
                result.start = index;
                result.end = (input2.length() + index) - 1;
            }
            char[] search = new char[input2.length()];
            for (int i = 0; i < input2.length(); i++) {
                search[i] = input2.charAt(i);
            }
            char[] org2 = new char[src2.length()];
            String[] fullPinyin = new String[src2.length()];
            int srcLen = src2.length();
            for (int i2 = 0; i2 < srcLen; i2++) {
                char ch = src2.charAt(i2);
                org2[i2] = ch;
                String pinyinCache = getPinyin(ch);
                if (!TextUtils.isEmpty(pinyinCache)) {
                    fullPinyin[i2] = pinyinCache.toUpperCase();
                } else {
                    fullPinyin[i2] = new StringBuilder(String.valueOf(ch)).toString();
                }
            }
            char firstSearch = search[0];
            int i3 = 0;
            while (true) {
                if (i3 >= fullPinyin.length) {
                    break;
                }
                char ch1 = fullPinyin[i3].charAt(0);
                char ch2 = org2[i3];
                if (ch1 == firstSearch || ch2 == firstSearch) {
                    int pos = distinguish(search, 0, subCharRangeArray(org2, i3, org2.length - 1), subStringRangeArray(fullPinyin, i3, fullPinyin.length - 1), 0, 0);
                    if (pos != -1) {
                        result.start = i3;
                        result.end = i3 + pos;
                        break;
                    }
                }
                i3++;
            }
        }
        return result;
    }

    public int distinguish(char[] search, int searchIndex, char[] src, String[] pinyin, int wordIndex, int wordStart) {
        if (searchIndex == 0 && (search[0] == src[0] || search[0] == pinyin[0].charAt(0))) {
            if (search.length != 1) {
                return distinguish(search, 1, src, pinyin, 0, 1);
            }
            return 0;
        }
        if (pinyin[wordIndex].length() > wordStart && searchIndex < search.length && (search[searchIndex] == src[wordIndex] || search[searchIndex] == pinyin[wordIndex].charAt(wordStart))) {
            if (searchIndex == search.length - 1) {
                if (!distinguish(search, src, pinyin, wordIndex)) {
                    return -1;
                }
                return wordIndex;
            }
            return distinguish(search, searchIndex + 1, src, pinyin, wordIndex, wordStart + 1);
        }
        if (pinyin.length > wordIndex + 1 && searchIndex < search.length && (search[searchIndex] == src[wordIndex + 1] || search[searchIndex] == pinyin[wordIndex + 1].charAt(0))) {
            if (searchIndex == search.length - 1) {
                if (distinguish(search, src, pinyin, wordIndex)) {
                    return wordIndex + 1;
                }
                return -1;
            }
            return distinguish(search, searchIndex + 1, src, pinyin, wordIndex + 1, 1);
        }
        if (pinyin.length > wordIndex + 1) {
            for (int i = 1; i < searchIndex; i++) {
                if (distinguish(search, searchIndex - i, src, pinyin, wordIndex + 1, 0) != -1) {
                    return wordIndex + 1;
                }
            }
        }
        return -1;
    }

    private boolean distinguish(char[] search, char[] src, String[] pinyin, int wordIndex) {
        String searchString = new String(search);
        int lastIndex = 0;
        for (int i = 0; i < wordIndex; i++) {
            int lastIndex2 = searchString.indexOf(pinyin[i].charAt(0), lastIndex);
            if (lastIndex2 == -1) {
                lastIndex2 = searchString.indexOf(src[i], lastIndex2);
            }
            if (lastIndex2 == -1) {
                return false;
            }
            lastIndex = lastIndex2 + 1;
        }
        return true;
    }

    private char[] subCharRangeArray(char[] org2, int start, int end) {
        int len = (end - start) + 1;
        char[] ret = new char[len];
        int i = start;
        int j = 0;
        while (i <= end) {
            ret[j] = org2[i];
            i++;
            j++;
        }
        return ret;
    }

    private String[] subStringRangeArray(String[] org2, int start, int end) {
        int len = (end - start) + 1;
        String[] ret = new String[len];
        int i = start;
        int j = 0;
        while (i <= end) {
            ret[j] = org2[i];
            i++;
            j++;
        }
        return ret;
    }

    public static PinyinUtils getObject() {
        return sInstance;
    }
}
