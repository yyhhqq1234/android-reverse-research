package com.alipay.sdk.packet;

import com.alipay.sdk.util.m;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.util.Locale;

/* loaded from: classes.dex */
public final class e {
    private boolean a;
    private String b = m.d();

    public e(boolean z) {
        this.a = z;
    }

    public final b a(c cVar) {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        String str;
        String str2;
        String str3;
        try {
            byteArrayInputStream = new ByteArrayInputStream(cVar.b);
            try {
                try {
                    byte[] bArr = new byte[5];
                    byteArrayInputStream.read(bArr);
                    byte[] bArr2 = new byte[Integer.parseInt(new String(bArr))];
                    byteArrayInputStream.read(bArr2);
                    str = new String(bArr2);
                    try {
                        byte[] bArr3 = new byte[5];
                        byteArrayInputStream.read(bArr3);
                        int parseInt = Integer.parseInt(new String(bArr3));
                        if (parseInt > 0) {
                            byte[] bArr4 = new byte[parseInt];
                            byteArrayInputStream.read(bArr4);
                            if (this.a) {
                                bArr4 = com.alipay.sdk.encrypt.e.b(this.b, bArr4);
                            }
                            str3 = new String(cVar.a ? com.alipay.sdk.encrypt.c.b(bArr4) : bArr4);
                        } else {
                            str3 = null;
                        }
                        try {
                            byteArrayInputStream.close();
                            str2 = str3;
                        } catch (Exception e) {
                            str2 = str3;
                        }
                    } catch (Exception e2) {
                        if (byteArrayInputStream != null) {
                            try {
                                byteArrayInputStream.close();
                                str2 = null;
                            } catch (Exception e3) {
                                str2 = null;
                            }
                        } else {
                            str2 = null;
                        }
                        if (str == null) {
                        }
                        return new b(str, str2);
                    }
                } catch (Exception e4) {
                    str = null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Exception e5) {
                    }
                }
                throw th;
            }
        } catch (Exception e6) {
            byteArrayInputStream = null;
            str = null;
        } catch (Throwable th3) {
            byteArrayInputStream = null;
            th = th3;
        }
        if (str == null || str2 != null) {
            return new b(str, str2);
        }
        return null;
    }

    private static byte[] a(String str, String str2) {
        return com.alipay.sdk.encrypt.d.a(str, str2);
    }

    private static byte[] a(String str, byte[] bArr) {
        return com.alipay.sdk.encrypt.e.a(str, bArr);
    }

    private static byte[] b(String str, byte[] bArr) {
        return com.alipay.sdk.encrypt.e.b(str, bArr);
    }

    private static byte[] a(byte[]... bArr) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        DataOutputStream dataOutputStream;
        byte[] bArr2 = null;
        if (bArr.length != 0) {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    for (int i = 0; i < bArr.length; i++) {
                        try {
                            dataOutputStream.write(String.format(Locale.getDefault(), "%05d", Integer.valueOf(bArr[i].length)).getBytes());
                            dataOutputStream.write(bArr[i]);
                        } catch (Exception e) {
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception e2) {
                                }
                            }
                            if (dataOutputStream != null) {
                                try {
                                    dataOutputStream.close();
                                } catch (Exception e3) {
                                }
                            }
                            return bArr2;
                        } catch (Throwable th2) {
                            th = th2;
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception e4) {
                                }
                            }
                            if (dataOutputStream != null) {
                                try {
                                    dataOutputStream.close();
                                    throw th;
                                } catch (Exception e5) {
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    }
                    dataOutputStream.flush();
                    bArr2 = byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception e6) {
                    }
                    try {
                        dataOutputStream.close();
                    } catch (Exception e7) {
                    }
                } catch (Exception e8) {
                    dataOutputStream = null;
                } catch (Throwable th3) {
                    dataOutputStream = null;
                    th = th3;
                }
            } catch (Exception e9) {
                dataOutputStream = null;
                byteArrayOutputStream = null;
            } catch (Throwable th4) {
                byteArrayOutputStream = null;
                th = th4;
                dataOutputStream = null;
            }
        }
        return bArr2;
    }

    private static String a(int i) {
        return String.format(Locale.getDefault(), "%05d", Integer.valueOf(i));
    }

    private static int a(String str) {
        return Integer.parseInt(str);
    }

    public final c a(b bVar, boolean z) {
        byte[] a;
        byte[] bytes = bVar.a.getBytes();
        byte[] bytes2 = bVar.b.getBytes();
        if (z) {
            try {
                bytes2 = com.alipay.sdk.encrypt.c.a(bytes2);
            } catch (Exception e) {
                z = false;
            }
        }
        if (this.a) {
            a = a(bytes, com.alipay.sdk.encrypt.d.a(this.b, com.alipay.sdk.cons.a.c), com.alipay.sdk.encrypt.e.a(this.b, bytes2));
        } else {
            a = a(bytes, bytes2);
        }
        return new c(z, a);
    }
}
