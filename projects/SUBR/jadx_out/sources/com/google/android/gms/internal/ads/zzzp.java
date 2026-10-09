package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Trace;
import android.util.Pair;
import android.view.Surface;
import androidx.work.WorkRequest;
import com.google.android.gms.common.Scopes;
import com.google.common.primitives.SignedBytes;
import com.onesignal.core.internal.config.InfluenceConfigModel;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.services.core.device.MimeTypes;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.io.encoding.Base64;
import kotlinx.coroutines.scheduling.WorkQueueKt;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzzp extends zzsn implements zzaak {
    private static final int[] zzb = {1920, 1600, InfluenceConfigModel.DEFAULT_INDIRECT_ATTRIBUTION_WINDOW, 1280, 960, 854, 640, 540, 480};
    private static boolean zzc;
    private static boolean zzd;
    private long zzA;
    private int zzB;
    private long zzC;
    private zzcd zzD;
    private zzcd zzE;
    private int zzF;
    private int zzG;
    private zzaai zzH;
    private long zzI;
    private long zzJ;
    private boolean zzK;
    private final Context zze;
    private final boolean zzf;
    private final zzabb zzg;
    private final boolean zzh;
    private final zzaal zzi;
    private final zzaaj zzj;
    private zzzo zzk;
    private boolean zzl;
    private boolean zzm;
    private zzabh zzn;
    private boolean zzo;
    private List zzp;
    private Surface zzq;
    private zzzs zzr;
    private zzdz zzs;
    private boolean zzt;
    private int zzu;
    private int zzv;
    private long zzw;
    private int zzx;
    private int zzy;
    private int zzz;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzp(Context context, zzsb zzsbVar, zzsp zzspVar, long j, boolean z, Handler handler, zzabc zzabcVar, int i, float f) {
        super(2, zzsbVar, zzspVar, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.zze = applicationContext;
        this.zzn = null;
        this.zzg = new zzabb(handler, zzabcVar);
        this.zzf = true;
        this.zzi = new zzaal(applicationContext, this, 0L);
        this.zzj = new zzaaj();
        this.zzh = "NVIDIA".equals(zzei.zzc);
        this.zzs = zzdz.zza;
        this.zzu = 1;
        this.zzv = 0;
        this.zzD = zzcd.zza;
        this.zzG = 0;
        this.zzE = null;
        this.zzF = -1000;
        this.zzI = -9223372036854775807L;
        this.zzJ = -9223372036854775807L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:100:0x014c  */
    /* JADX WARN: Code duplicated, block: B:102:0x0154  */
    /* JADX WARN: Code duplicated, block: B:103:0x0158  */
    /* JADX WARN: Code duplicated, block: B:105:0x0160  */
    /* JADX WARN: Code duplicated, block: B:106:0x0164  */
    /* JADX WARN: Code duplicated, block: B:108:0x016c  */
    /* JADX WARN: Code duplicated, block: B:109:0x0170  */
    /* JADX WARN: Code duplicated, block: B:111:0x0178  */
    /* JADX WARN: Code duplicated, block: B:112:0x017c  */
    /* JADX WARN: Code duplicated, block: B:114:0x0184  */
    /* JADX WARN: Code duplicated, block: B:115:0x0188  */
    /* JADX WARN: Code duplicated, block: B:117:0x0190  */
    /* JADX WARN: Code duplicated, block: B:118:0x0194  */
    /* JADX WARN: Code duplicated, block: B:120:0x019c  */
    /* JADX WARN: Code duplicated, block: B:121:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:123:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:124:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:126:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:127:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:129:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:130:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:132:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:133:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:135:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:136:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:138:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:139:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:141:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:142:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:144:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:145:0x0200  */
    /* JADX WARN: Code duplicated, block: B:147:0x0208  */
    /* JADX WARN: Code duplicated, block: B:148:0x020c  */
    /* JADX WARN: Code duplicated, block: B:150:0x0214  */
    /* JADX WARN: Code duplicated, block: B:151:0x0218  */
    /* JADX WARN: Code duplicated, block: B:153:0x0220  */
    /* JADX WARN: Code duplicated, block: B:154:0x0224  */
    /* JADX WARN: Code duplicated, block: B:156:0x022c  */
    /* JADX WARN: Code duplicated, block: B:157:0x0230  */
    /* JADX WARN: Code duplicated, block: B:159:0x0238  */
    /* JADX WARN: Code duplicated, block: B:160:0x023c  */
    /* JADX WARN: Code duplicated, block: B:162:0x0244  */
    /* JADX WARN: Code duplicated, block: B:163:0x0248  */
    /* JADX WARN: Code duplicated, block: B:165:0x0250  */
    /* JADX WARN: Code duplicated, block: B:166:0x0254  */
    /* JADX WARN: Code duplicated, block: B:168:0x025c  */
    /* JADX WARN: Code duplicated, block: B:169:0x0260  */
    /* JADX WARN: Code duplicated, block: B:171:0x0268  */
    /* JADX WARN: Code duplicated, block: B:172:0x026c  */
    /* JADX WARN: Code duplicated, block: B:174:0x0274  */
    /* JADX WARN: Code duplicated, block: B:175:0x0278  */
    /* JADX WARN: Code duplicated, block: B:177:0x0280  */
    /* JADX WARN: Code duplicated, block: B:178:0x0284  */
    /* JADX WARN: Code duplicated, block: B:180:0x028c  */
    /* JADX WARN: Code duplicated, block: B:181:0x0290  */
    /* JADX WARN: Code duplicated, block: B:183:0x0298  */
    /* JADX WARN: Code duplicated, block: B:184:0x029c  */
    /* JADX WARN: Code duplicated, block: B:186:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:187:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:189:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:190:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:192:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:193:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:195:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:196:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:198:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:199:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:201:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:202:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:204:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:205:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:207:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:208:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:210:0x0304  */
    /* JADX WARN: Code duplicated, block: B:211:0x0308  */
    /* JADX WARN: Code duplicated, block: B:213:0x0310  */
    /* JADX WARN: Code duplicated, block: B:214:0x0314  */
    /* JADX WARN: Code duplicated, block: B:216:0x031c  */
    /* JADX WARN: Code duplicated, block: B:217:0x0320  */
    /* JADX WARN: Code duplicated, block: B:219:0x0328  */
    /* JADX WARN: Code duplicated, block: B:220:0x032c  */
    /* JADX WARN: Code duplicated, block: B:222:0x0334  */
    /* JADX WARN: Code duplicated, block: B:223:0x0338  */
    /* JADX WARN: Code duplicated, block: B:225:0x0340  */
    /* JADX WARN: Code duplicated, block: B:226:0x0344  */
    /* JADX WARN: Code duplicated, block: B:228:0x034c  */
    /* JADX WARN: Code duplicated, block: B:229:0x0350  */
    /* JADX WARN: Code duplicated, block: B:231:0x0358  */
    /* JADX WARN: Code duplicated, block: B:232:0x035c  */
    /* JADX WARN: Code duplicated, block: B:234:0x0364  */
    /* JADX WARN: Code duplicated, block: B:235:0x0368  */
    /* JADX WARN: Code duplicated, block: B:237:0x0370  */
    /* JADX WARN: Code duplicated, block: B:238:0x0374  */
    /* JADX WARN: Code duplicated, block: B:240:0x037c  */
    /* JADX WARN: Code duplicated, block: B:241:0x0380  */
    /* JADX WARN: Code duplicated, block: B:243:0x0388  */
    /* JADX WARN: Code duplicated, block: B:244:0x038c  */
    /* JADX WARN: Code duplicated, block: B:246:0x0394  */
    /* JADX WARN: Code duplicated, block: B:247:0x0398  */
    /* JADX WARN: Code duplicated, block: B:249:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:250:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:252:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:253:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:255:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:256:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:258:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:259:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:261:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:262:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:264:0x03da  */
    /* JADX WARN: Code duplicated, block: B:265:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:267:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:268:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:270:0x03f1  */
    /* JADX WARN: Code duplicated, block: B:271:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:273:0x03fd  */
    /* JADX WARN: Code duplicated, block: B:274:0x0401  */
    /* JADX WARN: Code duplicated, block: B:276:0x0409  */
    /* JADX WARN: Code duplicated, block: B:277:0x040d  */
    /* JADX WARN: Code duplicated, block: B:279:0x0415  */
    /* JADX WARN: Code duplicated, block: B:280:0x0419  */
    /* JADX WARN: Code duplicated, block: B:282:0x0421  */
    /* JADX WARN: Code duplicated, block: B:283:0x0425  */
    /* JADX WARN: Code duplicated, block: B:285:0x042d  */
    /* JADX WARN: Code duplicated, block: B:286:0x0431  */
    /* JADX WARN: Code duplicated, block: B:288:0x0439  */
    /* JADX WARN: Code duplicated, block: B:289:0x043d  */
    /* JADX WARN: Code duplicated, block: B:291:0x0445  */
    /* JADX WARN: Code duplicated, block: B:292:0x0449  */
    /* JADX WARN: Code duplicated, block: B:294:0x0451  */
    /* JADX WARN: Code duplicated, block: B:295:0x0455  */
    /* JADX WARN: Code duplicated, block: B:297:0x045d  */
    /* JADX WARN: Code duplicated, block: B:298:0x0461  */
    /* JADX WARN: Code duplicated, block: B:300:0x0469  */
    /* JADX WARN: Code duplicated, block: B:301:0x046d  */
    /* JADX WARN: Code duplicated, block: B:303:0x0475  */
    /* JADX WARN: Code duplicated, block: B:304:0x0479  */
    /* JADX WARN: Code duplicated, block: B:306:0x0481  */
    /* JADX WARN: Code duplicated, block: B:307:0x0485  */
    /* JADX WARN: Code duplicated, block: B:309:0x048d  */
    /* JADX WARN: Code duplicated, block: B:310:0x0491  */
    /* JADX WARN: Code duplicated, block: B:312:0x0499  */
    /* JADX WARN: Code duplicated, block: B:313:0x049c  */
    /* JADX WARN: Code duplicated, block: B:315:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:316:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:318:0x04af  */
    /* JADX WARN: Code duplicated, block: B:319:0x04b2  */
    /* JADX WARN: Code duplicated, block: B:321:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:322:0x04be  */
    /* JADX WARN: Code duplicated, block: B:325:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:327:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:328:0x04d4  */
    /* JADX WARN: Code duplicated, block: B:330:0x04dc  */
    /* JADX WARN: Code duplicated, block: B:331:0x04e0  */
    /* JADX WARN: Code duplicated, block: B:333:0x04e8  */
    /* JADX WARN: Code duplicated, block: B:334:0x04ec  */
    /* JADX WARN: Code duplicated, block: B:336:0x04f4  */
    /* JADX WARN: Code duplicated, block: B:337:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:339:0x0500  */
    /* JADX WARN: Code duplicated, block: B:340:0x0504  */
    /* JADX WARN: Code duplicated, block: B:342:0x050c  */
    /* JADX WARN: Code duplicated, block: B:343:0x0510  */
    /* JADX WARN: Code duplicated, block: B:345:0x0518  */
    /* JADX WARN: Code duplicated, block: B:346:0x051c  */
    /* JADX WARN: Code duplicated, block: B:348:0x0524  */
    /* JADX WARN: Code duplicated, block: B:349:0x0528  */
    /* JADX WARN: Code duplicated, block: B:351:0x0530  */
    /* JADX WARN: Code duplicated, block: B:352:0x0534  */
    /* JADX WARN: Code duplicated, block: B:354:0x053c  */
    /* JADX WARN: Code duplicated, block: B:355:0x0540  */
    /* JADX WARN: Code duplicated, block: B:357:0x0548  */
    /* JADX WARN: Code duplicated, block: B:358:0x054c  */
    /* JADX WARN: Code duplicated, block: B:360:0x0554  */
    /* JADX WARN: Code duplicated, block: B:361:0x0558  */
    /* JADX WARN: Code duplicated, block: B:363:0x0560  */
    /* JADX WARN: Code duplicated, block: B:364:0x0564  */
    /* JADX WARN: Code duplicated, block: B:366:0x056c  */
    /* JADX WARN: Code duplicated, block: B:367:0x0570  */
    /* JADX WARN: Code duplicated, block: B:369:0x0578  */
    /* JADX WARN: Code duplicated, block: B:370:0x057c  */
    /* JADX WARN: Code duplicated, block: B:372:0x0584  */
    /* JADX WARN: Code duplicated, block: B:373:0x0588  */
    /* JADX WARN: Code duplicated, block: B:375:0x0590  */
    /* JADX WARN: Code duplicated, block: B:376:0x0594  */
    /* JADX WARN: Code duplicated, block: B:378:0x059c  */
    /* JADX WARN: Code duplicated, block: B:379:0x05a0  */
    /* JADX WARN: Code duplicated, block: B:381:0x05a8  */
    /* JADX WARN: Code duplicated, block: B:382:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:384:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:385:0x05b8  */
    /* JADX WARN: Code duplicated, block: B:387:0x05c0  */
    /* JADX WARN: Code duplicated, block: B:388:0x05c4  */
    /* JADX WARN: Code duplicated, block: B:38:0x007b  */
    /* JADX WARN: Code duplicated, block: B:390:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:391:0x05d0  */
    /* JADX WARN: Code duplicated, block: B:393:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:394:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:396:0x05e4  */
    /* JADX WARN: Code duplicated, block: B:397:0x05e8  */
    /* JADX WARN: Code duplicated, block: B:399:0x05f0  */
    /* JADX WARN: Code duplicated, block: B:400:0x05f4  */
    /* JADX WARN: Code duplicated, block: B:402:0x05fc  */
    /* JADX WARN: Code duplicated, block: B:403:0x0600  */
    /* JADX WARN: Code duplicated, block: B:405:0x0608  */
    /* JADX WARN: Code duplicated, block: B:406:0x060c  */
    /* JADX WARN: Code duplicated, block: B:408:0x0614  */
    /* JADX WARN: Code duplicated, block: B:409:0x0618  */
    /* JADX WARN: Code duplicated, block: B:411:0x0620  */
    /* JADX WARN: Code duplicated, block: B:412:0x0624  */
    /* JADX WARN: Code duplicated, block: B:414:0x062c  */
    /* JADX WARN: Code duplicated, block: B:415:0x0630  */
    /* JADX WARN: Code duplicated, block: B:417:0x0638  */
    /* JADX WARN: Code duplicated, block: B:418:0x063c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0080 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:420:0x0644  */
    /* JADX WARN: Code duplicated, block: B:421:0x0648  */
    /* JADX WARN: Code duplicated, block: B:423:0x0650  */
    /* JADX WARN: Code duplicated, block: B:424:0x0654  */
    /* JADX WARN: Code duplicated, block: B:426:0x065c  */
    /* JADX WARN: Code duplicated, block: B:427:0x065f  */
    /* JADX WARN: Code duplicated, block: B:429:0x0667  */
    /* JADX WARN: Code duplicated, block: B:42:0x0083 A[Catch: all -> 0x07ae, TRY_ENTER, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:515:0x07a6, B:42:0x0083, B:44:0x0089, B:47:0x0094, B:80:0x00ff, B:82:0x0105, B:507:0x0791, B:516:0x07aa), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:430:0x066a  */
    /* JADX WARN: Code duplicated, block: B:432:0x0672  */
    /* JADX WARN: Code duplicated, block: B:433:0x0676  */
    /* JADX WARN: Code duplicated, block: B:435:0x067e  */
    /* JADX WARN: Code duplicated, block: B:436:0x0682  */
    /* JADX WARN: Code duplicated, block: B:438:0x068a  */
    /* JADX WARN: Code duplicated, block: B:439:0x068e  */
    /* JADX WARN: Code duplicated, block: B:441:0x0696  */
    /* JADX WARN: Code duplicated, block: B:442:0x069a  */
    /* JADX WARN: Code duplicated, block: B:444:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:445:0x06a6  */
    /* JADX WARN: Code duplicated, block: B:447:0x06ae  */
    /* JADX WARN: Code duplicated, block: B:448:0x06b2  */
    /* JADX WARN: Code duplicated, block: B:450:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:451:0x06be  */
    /* JADX WARN: Code duplicated, block: B:453:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:454:0x06ca  */
    /* JADX WARN: Code duplicated, block: B:456:0x06d2  */
    /* JADX WARN: Code duplicated, block: B:457:0x06d6  */
    /* JADX WARN: Code duplicated, block: B:459:0x06de  */
    /* JADX WARN: Code duplicated, block: B:460:0x06e2  */
    /* JADX WARN: Code duplicated, block: B:462:0x06ea  */
    /* JADX WARN: Code duplicated, block: B:463:0x06ee  */
    /* JADX WARN: Code duplicated, block: B:465:0x06f6  */
    /* JADX WARN: Code duplicated, block: B:466:0x06fa  */
    /* JADX WARN: Code duplicated, block: B:468:0x0702  */
    /* JADX WARN: Code duplicated, block: B:469:0x0706  */
    /* JADX WARN: Code duplicated, block: B:471:0x070e  */
    /* JADX WARN: Code duplicated, block: B:472:0x0712  */
    /* JADX WARN: Code duplicated, block: B:474:0x071a  */
    /* JADX WARN: Code duplicated, block: B:475:0x071e  */
    /* JADX WARN: Code duplicated, block: B:477:0x0726  */
    /* JADX WARN: Code duplicated, block: B:478:0x072a  */
    /* JADX WARN: Code duplicated, block: B:47:0x0094 A[Catch: all -> 0x07ae, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:515:0x07a6, B:42:0x0083, B:44:0x0089, B:47:0x0094, B:80:0x00ff, B:82:0x0105, B:507:0x0791, B:516:0x07aa), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:480:0x0732  */
    /* JADX WARN: Code duplicated, block: B:481:0x0735  */
    /* JADX WARN: Code duplicated, block: B:483:0x073d  */
    /* JADX WARN: Code duplicated, block: B:484:0x0740  */
    /* JADX WARN: Code duplicated, block: B:486:0x0748  */
    /* JADX WARN: Code duplicated, block: B:487:0x074b  */
    /* JADX WARN: Code duplicated, block: B:489:0x0753  */
    /* JADX WARN: Code duplicated, block: B:490:0x0756  */
    /* JADX WARN: Code duplicated, block: B:492:0x075e  */
    /* JADX WARN: Code duplicated, block: B:493:0x0761  */
    /* JADX WARN: Code duplicated, block: B:495:0x0769  */
    /* JADX WARN: Code duplicated, block: B:496:0x076c  */
    /* JADX WARN: Code duplicated, block: B:498:0x0774  */
    /* JADX WARN: Code duplicated, block: B:499:0x0777  */
    /* JADX WARN: Code duplicated, block: B:501:0x077f  */
    /* JADX WARN: Code duplicated, block: B:502:0x0782  */
    /* JADX WARN: Code duplicated, block: B:504:0x078a  */
    /* JADX WARN: Code duplicated, block: B:505:0x078d  */
    /* JADX WARN: Code duplicated, block: B:507:0x0791 A[Catch: all -> 0x07ae, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:515:0x07a6, B:42:0x0083, B:44:0x0089, B:47:0x0094, B:80:0x00ff, B:82:0x0105, B:507:0x0791, B:516:0x07aa), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:511:0x079b  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:54:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:60:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:68:0x00db  */
    /* JADX WARN: Code duplicated, block: B:69:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:71:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ff A[Catch: all -> 0x07ae, TRY_ENTER, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:515:0x07a6, B:42:0x0083, B:44:0x0089, B:47:0x0094, B:80:0x00ff, B:82:0x0105, B:507:0x0791, B:516:0x07aa), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0105 A[Catch: all -> 0x07ae, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:515:0x07a6, B:42:0x0083, B:44:0x0089, B:47:0x0094, B:80:0x00ff, B:82:0x0105, B:507:0x0791, B:516:0x07aa), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0110  */
    /* JADX WARN: Code duplicated, block: B:87:0x0118  */
    /* JADX WARN: Code duplicated, block: B:88:0x011c  */
    /* JADX WARN: Code duplicated, block: B:90:0x0124  */
    /* JADX WARN: Code duplicated, block: B:91:0x0128  */
    /* JADX WARN: Code duplicated, block: B:93:0x0130  */
    /* JADX WARN: Code duplicated, block: B:94:0x0134  */
    /* JADX WARN: Code duplicated, block: B:96:0x013c  */
    /* JADX WARN: Code duplicated, block: B:97:0x0140  */
    /* JADX WARN: Code duplicated, block: B:99:0x0148  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    protected static final boolean zzaU(String str) {
        String str2;
        byte b;
        String str3;
        byte b2;
        boolean z = false;
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (zzzp.class) {
            if (!zzc) {
                byte b3 = 28;
                byte b4 = -1;
                if (zzei.zza <= 28) {
                    String str4 = zzei.zzb;
                    switch (str4.hashCode()) {
                        case -1339091551:
                            if (!str4.equals("dangal")) {
                                b2 = -1;
                            } else {
                                b2 = 1;
                            }
                            break;
                        case -1220081023:
                            if (!str4.equals("dangalFHD")) {
                                b2 = -1;
                            } else {
                                b2 = 3;
                            }
                            break;
                        case -1220066608:
                            if (!str4.equals("dangalUHD")) {
                                b2 = -1;
                            } else {
                                b2 = 2;
                            }
                            break;
                        case -1012436106:
                            if (!str4.equals("oneday")) {
                                b2 = -1;
                            } else {
                                b2 = 7;
                            }
                            break;
                        case -760312546:
                            if (!str4.equals("aquaman")) {
                                b2 = -1;
                            } else {
                                b2 = 0;
                            }
                            break;
                        case -64886864:
                            if (!str4.equals("magnolia")) {
                                b2 = -1;
                            } else {
                                b2 = 4;
                            }
                            break;
                        case 3415681:
                            if (!str4.equals("once")) {
                                b2 = -1;
                            } else {
                                b2 = 6;
                            }
                            break;
                        case 825323514:
                            if (!str4.equals("machuca")) {
                                b2 = -1;
                            } else {
                                b2 = 5;
                            }
                            break;
                        default:
                            b2 = -1;
                            break;
                    }
                    switch (b2) {
                        default:
                            if (zzei.zza <= 27 || !"HWEML".equals(zzei.zzb)) {
                                str2 = zzei.zzd;
                                switch (str2.hashCode()) {
                                    case -349662828:
                                        if (!str2.equals("AFTJMST12")) {
                                            b = -1;
                                        } else {
                                            b = 6;
                                        }
                                        break;
                                    case -321033677:
                                        if (!str2.equals("AFTKMST12")) {
                                            b = -1;
                                        } else {
                                            b = 7;
                                        }
                                        break;
                                    case 2006354:
                                        if (!str2.equals("AFTA")) {
                                            b = -1;
                                        } else {
                                            b = 0;
                                        }
                                        break;
                                    case 2006367:
                                        if (!str2.equals("AFTN")) {
                                            b = -1;
                                        } else {
                                            b = 1;
                                        }
                                        break;
                                    case 2006371:
                                        if (!str2.equals("AFTR")) {
                                            b = -1;
                                        } else {
                                            b = 2;
                                        }
                                        break;
                                    case 1785421873:
                                        if (!str2.equals("AFTEU011")) {
                                            b = -1;
                                        } else {
                                            b = 3;
                                        }
                                        break;
                                    case 1785421876:
                                        if (!str2.equals("AFTEU014")) {
                                            b = -1;
                                        } else {
                                            b = 4;
                                        }
                                        break;
                                    case 1798172390:
                                        if (!str2.equals("AFTSO001")) {
                                            b = -1;
                                        } else {
                                            b = 8;
                                        }
                                        break;
                                    case 2119412532:
                                        if (!str2.equals("AFTEUFF014")) {
                                            b = -1;
                                        } else {
                                            b = 5;
                                        }
                                        break;
                                    default:
                                        b = -1;
                                        break;
                                }
                                switch (b) {
                                    default:
                                        if (zzei.zza <= 26) {
                                            str3 = zzei.zzb;
                                            switch (str3.hashCode()) {
                                                case -2144781245:
                                                    if (!str3.equals("GIONEE_SWW1609")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 54;
                                                    }
                                                    break;
                                                case -2144781185:
                                                    if (!str3.equals("GIONEE_SWW1627")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 55;
                                                    }
                                                    break;
                                                case -2144781160:
                                                    if (!str3.equals("GIONEE_SWW1631")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 56;
                                                    }
                                                    break;
                                                case -2097309513:
                                                    if (!str3.equals("K50a40")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 74;
                                                    }
                                                    break;
                                                case -2022874474:
                                                    if (!str3.equals("CP8676_I02")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 22;
                                                    }
                                                    break;
                                                case -1978993182:
                                                    if (!str3.equals("NX541J")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 89;
                                                    }
                                                    break;
                                                case -1978990237:
                                                    if (!str3.equals("NX573J")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 90;
                                                    }
                                                    break;
                                                case -1936688988:
                                                    if (!str3.equals("PGN528")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 101;
                                                    }
                                                    break;
                                                case -1936688066:
                                                    if (!str3.equals("PGN610")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 102;
                                                    }
                                                    break;
                                                case -1936688065:
                                                    if (!str3.equals("PGN611")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 103;
                                                    }
                                                    break;
                                                case -1931988508:
                                                    if (!str3.equals("AquaPowerM")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 13;
                                                    }
                                                    break;
                                                case -1885099851:
                                                    if (!str3.equals("RAIJIN")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 116;
                                                    }
                                                    break;
                                                case -1696512866:
                                                    if (!str3.equals("XT1663")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 137;
                                                    }
                                                    break;
                                                case -1680025915:
                                                    if (!str3.equals("ComioS1")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 21;
                                                    }
                                                    break;
                                                case -1615810839:
                                                    if (!str3.equals("Phantom6")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 104;
                                                    }
                                                    break;
                                                case -1600724499:
                                                    if (!str3.equals("pacificrim")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 95;
                                                    }
                                                    break;
                                                case -1554255044:
                                                    if (!str3.equals("vernee_M5")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 130;
                                                    }
                                                    break;
                                                case -1481772737:
                                                    if (!str3.equals("panell_dl")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 97;
                                                    }
                                                    break;
                                                case -1481772730:
                                                    if (!str3.equals("panell_ds")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 98;
                                                    }
                                                    break;
                                                case -1481772729:
                                                    if (!str3.equals("panell_dt")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 99;
                                                    }
                                                    break;
                                                case -1320080169:
                                                    if (!str3.equals("GiONEE_GBL7319")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 52;
                                                    }
                                                    break;
                                                case -1217592143:
                                                    if (!str3.equals("BRAVIA_ATV2")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 18;
                                                    }
                                                    break;
                                                case -1180384755:
                                                    if (!str3.equals("iris60")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 70;
                                                    }
                                                    break;
                                                case -1139198265:
                                                    if (!str3.equals("Slate_Pro")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 118;
                                                    }
                                                    break;
                                                case -1052835013:
                                                    if (!str3.equals("namath")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 87;
                                                    }
                                                    break;
                                                case -993250464:
                                                    if (!str3.equals("A10-70F")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 5;
                                                    }
                                                    break;
                                                case -993250458:
                                                    if (!str3.equals("A10-70L")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 6;
                                                    }
                                                    break;
                                                case -965403638:
                                                    if (!str3.equals("s905x018")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 120;
                                                    }
                                                    break;
                                                case -958336948:
                                                    if (!str3.equals("ELUGA_Ray_X")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 34;
                                                    }
                                                    break;
                                                case -879245230:
                                                    if (!str3.equals("tcl_eu")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 126;
                                                    }
                                                    break;
                                                case -842500323:
                                                    if (!str3.equals("nicklaus_f")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 88;
                                                    }
                                                    break;
                                                case -821392978:
                                                    if (!str3.equals("A7000-a")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 9;
                                                    }
                                                    break;
                                                case -797483286:
                                                    if (!str3.equals("SVP-DTV15")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 119;
                                                    }
                                                    break;
                                                case -794946968:
                                                    if (!str3.equals("watson")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 131;
                                                    }
                                                    break;
                                                case -788334647:
                                                    if (!str3.equals("whyred")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 132;
                                                    }
                                                    break;
                                                case -782144577:
                                                    if (!str3.equals("OnePlus5T")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 91;
                                                    }
                                                    break;
                                                case -575125681:
                                                    if (!str3.equals("GiONEE_CBL7513")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 51;
                                                    }
                                                    break;
                                                case -521118391:
                                                    if (!str3.equals("GIONEE_GBL7360")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 53;
                                                    }
                                                    break;
                                                case -430914369:
                                                    if (!str3.equals("Pixi4-7_3G")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 105;
                                                    }
                                                    break;
                                                case -290434366:
                                                    if (!str3.equals("taido_row")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 121;
                                                    }
                                                    break;
                                                case -282781963:
                                                    if (!str3.equals("BLACK-1X")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 17;
                                                    }
                                                    break;
                                                case -277133239:
                                                    if (!str3.equals("Z12_PRO")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 138;
                                                    }
                                                    break;
                                                case -173639913:
                                                    if (!str3.equals("ELUGA_A3_Pro")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 31;
                                                    }
                                                    break;
                                                case -56598463:
                                                    if (!str3.equals("woods_fn")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 134;
                                                    }
                                                    break;
                                                case 2126:
                                                    if (!str3.equals("C1")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 20;
                                                    }
                                                    break;
                                                case 2564:
                                                    if (!str3.equals("Q5")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 113;
                                                    }
                                                    break;
                                                case 2715:
                                                    if (!str3.equals("V1")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 127;
                                                    }
                                                    break;
                                                case 2719:
                                                    if (!str3.equals("V5")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 129;
                                                    }
                                                    break;
                                                case 3091:
                                                    if (!str3.equals("b5")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 16;
                                                    }
                                                    break;
                                                case 3483:
                                                    if (!str3.equals("mh")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 84;
                                                    }
                                                    break;
                                                case 73405:
                                                    if (!str3.equals("JGZ")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 73;
                                                    }
                                                    break;
                                                case 75537:
                                                    if (!str3.equals("M04")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 79;
                                                    }
                                                    break;
                                                case 75739:
                                                    if (!str3.equals("M5c")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 80;
                                                    }
                                                    break;
                                                case 76779:
                                                    if (!str3.equals("MX6")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 86;
                                                    }
                                                    break;
                                                case 78669:
                                                    if (!str3.equals("P85")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 94;
                                                    }
                                                    break;
                                                case 79305:
                                                    if (!str3.equals("PLE")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 107;
                                                    }
                                                    break;
                                                case 80618:
                                                    if (!str3.equals("QX1")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 115;
                                                    }
                                                    break;
                                                case 88274:
                                                    if (!str3.equals("Z80")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 139;
                                                    }
                                                    break;
                                                case 98846:
                                                    if (!str3.equals("cv1")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 26;
                                                    }
                                                    break;
                                                case 98848:
                                                    if (!str3.equals("cv3")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 27;
                                                    }
                                                    break;
                                                case 99329:
                                                    if (!str3.equals("deb")) {
                                                        b3 = -1;
                                                    }
                                                    break;
                                                case 101481:
                                                    if (!str3.equals("flo")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 49;
                                                    }
                                                    break;
                                                case 1513190:
                                                    if (!str3.equals("1601")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 0;
                                                    }
                                                    break;
                                                case 1514184:
                                                    if (!str3.equals("1713")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 1;
                                                    }
                                                    break;
                                                case 1514185:
                                                    if (!str3.equals("1714")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 2;
                                                    }
                                                    break;
                                                case 2133089:
                                                    if (!str3.equals("F01H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 36;
                                                    }
                                                    break;
                                                case 2133091:
                                                    if (!str3.equals("F01J")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 37;
                                                    }
                                                    break;
                                                case 2133120:
                                                    if (!str3.equals("F02H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 38;
                                                    }
                                                    break;
                                                case 2133151:
                                                    if (!str3.equals("F03H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 39;
                                                    }
                                                    break;
                                                case 2133182:
                                                    if (!str3.equals("F04H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 40;
                                                    }
                                                    break;
                                                case 2133184:
                                                    if (!str3.equals("F04J")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 41;
                                                    }
                                                    break;
                                                case 2436959:
                                                    if (!str3.equals("P681")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 93;
                                                    }
                                                    break;
                                                case 2463773:
                                                    if (!str3.equals("Q350")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 109;
                                                    }
                                                    break;
                                                case 2464648:
                                                    if (!str3.equals("Q427")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 111;
                                                    }
                                                    break;
                                                case 2689555:
                                                    if (!str3.equals("XE2X")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 136;
                                                    }
                                                    break;
                                                case 3154429:
                                                    if (!str3.equals("fugu")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 50;
                                                    }
                                                    break;
                                                case 3284551:
                                                    if (!str3.equals("kate")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 75;
                                                    }
                                                    break;
                                                case 3351335:
                                                    if (!str3.equals("mido")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 85;
                                                    }
                                                    break;
                                                case 3386211:
                                                    if (!str3.equals("p212")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 92;
                                                    }
                                                    break;
                                                case 41325051:
                                                    if (!str3.equals("MEIZU_M5")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 83;
                                                    }
                                                    break;
                                                case 51349633:
                                                    if (!str3.equals("601LV")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 3;
                                                    }
                                                    break;
                                                case 51350594:
                                                    if (!str3.equals("602LV")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 4;
                                                    }
                                                    break;
                                                case 55178625:
                                                    if (!str3.equals("Aura_Note_2")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 15;
                                                    }
                                                    break;
                                                case 61542055:
                                                    if (!str3.equals("A1601")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 7;
                                                    }
                                                    break;
                                                case 65355429:
                                                    if (!str3.equals("E5643")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 30;
                                                    }
                                                    break;
                                                case 66214468:
                                                    if (!str3.equals("F3111")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 42;
                                                    }
                                                    break;
                                                case 66214470:
                                                    if (!str3.equals("F3113")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 43;
                                                    }
                                                    break;
                                                case 66214473:
                                                    if (!str3.equals("F3116")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 44;
                                                    }
                                                    break;
                                                case 66215429:
                                                    if (!str3.equals("F3211")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 45;
                                                    }
                                                    break;
                                                case 66215431:
                                                    if (!str3.equals("F3213")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 46;
                                                    }
                                                    break;
                                                case 66215433:
                                                    if (!str3.equals("F3215")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 47;
                                                    }
                                                    break;
                                                case 66216390:
                                                    if (!str3.equals("F3311")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 48;
                                                    }
                                                    break;
                                                case 76402249:
                                                    if (!str3.equals("PRO7S")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 108;
                                                    }
                                                    break;
                                                case 76404105:
                                                    if (!str3.equals("Q4260")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 110;
                                                    }
                                                    break;
                                                case 76404911:
                                                    if (!str3.equals("Q4310")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 112;
                                                    }
                                                    break;
                                                case 80963634:
                                                    if (!str3.equals("V23GB")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 128;
                                                    }
                                                    break;
                                                case 82882791:
                                                    if (!str3.equals("X3_HK")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 135;
                                                    }
                                                    break;
                                                case 98715550:
                                                    if (!str3.equals("i9031")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 67;
                                                    }
                                                    break;
                                                case 101370885:
                                                    if (!str3.equals("l5460")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 76;
                                                    }
                                                    break;
                                                case 102844228:
                                                    if (!str3.equals("le_x6")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 77;
                                                    }
                                                    break;
                                                case 165221241:
                                                    if (!str3.equals("A2016a40")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 8;
                                                    }
                                                    break;
                                                case 182191441:
                                                    if (!str3.equals("CPY83_I00")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 25;
                                                    }
                                                    break;
                                                case 245388979:
                                                    if (!str3.equals("marino_f")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 82;
                                                    }
                                                    break;
                                                case 287431619:
                                                    if (!str3.equals("griffin")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 60;
                                                    }
                                                    break;
                                                case 307593612:
                                                    if (!str3.equals("A7010a48")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 11;
                                                    }
                                                    break;
                                                case 308517133:
                                                    if (!str3.equals("A7020a48")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 12;
                                                    }
                                                    break;
                                                case 316215098:
                                                    if (!str3.equals("TB3-730F")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 122;
                                                    }
                                                    break;
                                                case 316215116:
                                                    if (!str3.equals("TB3-730X")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 123;
                                                    }
                                                    break;
                                                case 316246811:
                                                    if (!str3.equals("TB3-850F")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 124;
                                                    }
                                                    break;
                                                case 316246818:
                                                    if (!str3.equals("TB3-850M")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 125;
                                                    }
                                                    break;
                                                case 407160593:
                                                    if (!str3.equals("Pixi5-10_4G")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 106;
                                                    }
                                                    break;
                                                case 507412548:
                                                    if (!str3.equals("QM16XE_U")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 114;
                                                    }
                                                    break;
                                                case 793982701:
                                                    if (!str3.equals("GIONEE_WBL5708")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 57;
                                                    }
                                                    break;
                                                case 794038622:
                                                    if (!str3.equals("GIONEE_WBL7365")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 58;
                                                    }
                                                    break;
                                                case 794040393:
                                                    if (!str3.equals("GIONEE_WBL7519")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 59;
                                                    }
                                                    break;
                                                case 835649806:
                                                    if (!str3.equals("manning")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 81;
                                                    }
                                                    break;
                                                case 917340916:
                                                    if (!str3.equals("A7000plus")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 10;
                                                    }
                                                    break;
                                                case 958008161:
                                                    if (!str3.equals("j2xlteins")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 72;
                                                    }
                                                    break;
                                                case 1060579533:
                                                    if (!str3.equals("panell_d")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 96;
                                                    }
                                                    break;
                                                case 1150207623:
                                                    if (!str3.equals("LS-5017")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 78;
                                                    }
                                                    break;
                                                case 1176899427:
                                                    if (!str3.equals("itel_S41")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 71;
                                                    }
                                                    break;
                                                case 1280332038:
                                                    if (!str3.equals("hwALE-H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 62;
                                                    }
                                                    break;
                                                case 1306947716:
                                                    if (!str3.equals("EverStar_S")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 35;
                                                    }
                                                    break;
                                                case 1349174697:
                                                    if (!str3.equals("htc_e56ml_dtul")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = Base64.padSymbol;
                                                    }
                                                    break;
                                                case 1522194893:
                                                    if (!str3.equals("woods_f")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 133;
                                                    }
                                                    break;
                                                case 1691543273:
                                                    if (!str3.equals("CPH1609")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 23;
                                                    }
                                                    break;
                                                case 1691544261:
                                                    if (!str3.equals("CPH1715")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 24;
                                                    }
                                                    break;
                                                case 1709443163:
                                                    if (!str3.equals("iball8735_9806")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 68;
                                                    }
                                                    break;
                                                case 1865889110:
                                                    if (!str3.equals("santoni")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 117;
                                                    }
                                                    break;
                                                case 1906253259:
                                                    if (!str3.equals("PB2-670M")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 100;
                                                    }
                                                    break;
                                                case 1977196784:
                                                    if (!str3.equals("Infinix-X572")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 69;
                                                    }
                                                    break;
                                                case 2006372676:
                                                    if (!str3.equals("BRAVIA_ATV3_4K")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 19;
                                                    }
                                                    break;
                                                case 2019281702:
                                                    if (!str3.equals("DM-01K")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 29;
                                                    }
                                                    break;
                                                case 2029784656:
                                                    if (!str3.equals("HWBLN-H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 63;
                                                    }
                                                    break;
                                                case 2030379515:
                                                    if (!str3.equals("HWCAM-H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = SignedBytes.MAX_POWER_OF_TWO;
                                                    }
                                                    break;
                                                case 2033393791:
                                                    if (!str3.equals("ASUS_X00AD_2")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 14;
                                                    }
                                                    break;
                                                case 2047190025:
                                                    if (!str3.equals("ELUGA_Note")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 32;
                                                    }
                                                    break;
                                                case 2047252157:
                                                    if (!str3.equals("ELUGA_Prim")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 33;
                                                    }
                                                    break;
                                                case 2048319463:
                                                    if (!str3.equals("HWVNS-H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 65;
                                                    }
                                                    break;
                                                case 2048855701:
                                                    if (!str3.equals("HWWAS-H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 66;
                                                    }
                                                    break;
                                                default:
                                                    b3 = -1;
                                                    break;
                                            }
                                            switch (b3) {
                                                default:
                                                    if (str2.hashCode() == -594534941 && str2.equals("JSN-L21")) {
                                                        b4 = 0;
                                                    }
                                                    if (b4 == 0) {
                                                    }
                                                case 0:
                                                case 1:
                                                case 2:
                                                case 3:
                                                case 4:
                                                case 5:
                                                case 6:
                                                case 7:
                                                case 8:
                                                case 9:
                                                case 10:
                                                case 11:
                                                case 12:
                                                case 13:
                                                case 14:
                                                case 15:
                                                case 16:
                                                case 17:
                                                case 18:
                                                case 19:
                                                case 20:
                                                case 21:
                                                case 22:
                                                case 23:
                                                case 24:
                                                case 25:
                                                case 26:
                                                case 27:
                                                case 28:
                                                case 29:
                                                case 30:
                                                case 31:
                                                case 32:
                                                case 33:
                                                case 34:
                                                case 35:
                                                case 36:
                                                case 37:
                                                case 38:
                                                case 39:
                                                case 40:
                                                case 41:
                                                case 42:
                                                case 43:
                                                case 44:
                                                case 45:
                                                case 46:
                                                case 47:
                                                case 48:
                                                case 49:
                                                case 50:
                                                case 51:
                                                case 52:
                                                case 53:
                                                case 54:
                                                case 55:
                                                case 56:
                                                case 57:
                                                case 58:
                                                case 59:
                                                case 60:
                                                case 61:
                                                case 62:
                                                case 63:
                                                case 64:
                                                case 65:
                                                case 66:
                                                case 67:
                                                case 68:
                                                case 69:
                                                case 70:
                                                case 71:
                                                case 72:
                                                case 73:
                                                case 74:
                                                case 75:
                                                case 76:
                                                case 77:
                                                case 78:
                                                case 79:
                                                case 80:
                                                case 81:
                                                case 82:
                                                case 83:
                                                case 84:
                                                case 85:
                                                case 86:
                                                case 87:
                                                case 88:
                                                case 89:
                                                case 90:
                                                case 91:
                                                case 92:
                                                case 93:
                                                case 94:
                                                case 95:
                                                case 96:
                                                case 97:
                                                case 98:
                                                case 99:
                                                case 100:
                                                case 101:
                                                case 102:
                                                case 103:
                                                case 104:
                                                case 105:
                                                case 106:
                                                case 107:
                                                case 108:
                                                case 109:
                                                case 110:
                                                case 111:
                                                case 112:
                                                case 113:
                                                case 114:
                                                case 115:
                                                case 116:
                                                case 117:
                                                case 118:
                                                case 119:
                                                case 120:
                                                case 121:
                                                case 122:
                                                case 123:
                                                case 124:
                                                case 125:
                                                case 126:
                                                case WorkQueueKt.MASK /* 127 */:
                                                case 128:
                                                case 129:
                                                case 130:
                                                case 131:
                                                case 132:
                                                case 133:
                                                case 134:
                                                case 135:
                                                case 136:
                                                case 137:
                                                case 138:
                                                case 139:
                                                    z = true;
                                                    break;
                                            }
                                        }
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                        z = true;
                                        break;
                                }
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            z = true;
                            break;
                    }
                } else if (zzei.zza <= 27) {
                    str2 = zzei.zzd;
                    switch (str2.hashCode()) {
                        case -349662828:
                            if (!str2.equals("AFTJMST12")) {
                                b = -1;
                            } else {
                                b = 6;
                            }
                            break;
                        case -321033677:
                            if (!str2.equals("AFTKMST12")) {
                                b = -1;
                            } else {
                                b = 7;
                            }
                            break;
                        case 2006354:
                            if (!str2.equals("AFTA")) {
                                b = -1;
                            } else {
                                b = 0;
                            }
                            break;
                        case 2006367:
                            if (!str2.equals("AFTN")) {
                                b = -1;
                            } else {
                                b = 1;
                            }
                            break;
                        case 2006371:
                            if (!str2.equals("AFTR")) {
                                b = -1;
                            } else {
                                b = 2;
                            }
                            break;
                        case 1785421873:
                            if (!str2.equals("AFTEU011")) {
                                b = -1;
                            } else {
                                b = 3;
                            }
                            break;
                        case 1785421876:
                            if (!str2.equals("AFTEU014")) {
                                b = -1;
                            } else {
                                b = 4;
                            }
                            break;
                        case 1798172390:
                            if (!str2.equals("AFTSO001")) {
                                b = -1;
                            } else {
                                b = 8;
                            }
                            break;
                        case 2119412532:
                            if (!str2.equals("AFTEUFF014")) {
                                b = -1;
                            } else {
                                b = 5;
                            }
                            break;
                        default:
                            b = -1;
                            break;
                    }
                    switch (b) {
                        default:
                            if (zzei.zza <= 26) {
                                str3 = zzei.zzb;
                                switch (str3.hashCode()) {
                                    case -2144781245:
                                        if (!str3.equals("GIONEE_SWW1609")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 54;
                                        }
                                        break;
                                    case -2144781185:
                                        if (!str3.equals("GIONEE_SWW1627")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 55;
                                        }
                                        break;
                                    case -2144781160:
                                        if (!str3.equals("GIONEE_SWW1631")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 56;
                                        }
                                        break;
                                    case -2097309513:
                                        if (!str3.equals("K50a40")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 74;
                                        }
                                        break;
                                    case -2022874474:
                                        if (!str3.equals("CP8676_I02")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 22;
                                        }
                                        break;
                                    case -1978993182:
                                        if (!str3.equals("NX541J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 89;
                                        }
                                        break;
                                    case -1978990237:
                                        if (!str3.equals("NX573J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 90;
                                        }
                                        break;
                                    case -1936688988:
                                        if (!str3.equals("PGN528")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 101;
                                        }
                                        break;
                                    case -1936688066:
                                        if (!str3.equals("PGN610")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 102;
                                        }
                                        break;
                                    case -1936688065:
                                        if (!str3.equals("PGN611")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 103;
                                        }
                                        break;
                                    case -1931988508:
                                        if (!str3.equals("AquaPowerM")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 13;
                                        }
                                        break;
                                    case -1885099851:
                                        if (!str3.equals("RAIJIN")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 116;
                                        }
                                        break;
                                    case -1696512866:
                                        if (!str3.equals("XT1663")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 137;
                                        }
                                        break;
                                    case -1680025915:
                                        if (!str3.equals("ComioS1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 21;
                                        }
                                        break;
                                    case -1615810839:
                                        if (!str3.equals("Phantom6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 104;
                                        }
                                        break;
                                    case -1600724499:
                                        if (!str3.equals("pacificrim")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 95;
                                        }
                                        break;
                                    case -1554255044:
                                        if (!str3.equals("vernee_M5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 130;
                                        }
                                        break;
                                    case -1481772737:
                                        if (!str3.equals("panell_dl")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 97;
                                        }
                                        break;
                                    case -1481772730:
                                        if (!str3.equals("panell_ds")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 98;
                                        }
                                        break;
                                    case -1481772729:
                                        if (!str3.equals("panell_dt")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 99;
                                        }
                                        break;
                                    case -1320080169:
                                        if (!str3.equals("GiONEE_GBL7319")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 52;
                                        }
                                        break;
                                    case -1217592143:
                                        if (!str3.equals("BRAVIA_ATV2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 18;
                                        }
                                        break;
                                    case -1180384755:
                                        if (!str3.equals("iris60")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 70;
                                        }
                                        break;
                                    case -1139198265:
                                        if (!str3.equals("Slate_Pro")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 118;
                                        }
                                        break;
                                    case -1052835013:
                                        if (!str3.equals("namath")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 87;
                                        }
                                        break;
                                    case -993250464:
                                        if (!str3.equals("A10-70F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 5;
                                        }
                                        break;
                                    case -993250458:
                                        if (!str3.equals("A10-70L")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 6;
                                        }
                                        break;
                                    case -965403638:
                                        if (!str3.equals("s905x018")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 120;
                                        }
                                        break;
                                    case -958336948:
                                        if (!str3.equals("ELUGA_Ray_X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 34;
                                        }
                                        break;
                                    case -879245230:
                                        if (!str3.equals("tcl_eu")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 126;
                                        }
                                        break;
                                    case -842500323:
                                        if (!str3.equals("nicklaus_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 88;
                                        }
                                        break;
                                    case -821392978:
                                        if (!str3.equals("A7000-a")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 9;
                                        }
                                        break;
                                    case -797483286:
                                        if (!str3.equals("SVP-DTV15")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 119;
                                        }
                                        break;
                                    case -794946968:
                                        if (!str3.equals("watson")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 131;
                                        }
                                        break;
                                    case -788334647:
                                        if (!str3.equals("whyred")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 132;
                                        }
                                        break;
                                    case -782144577:
                                        if (!str3.equals("OnePlus5T")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 91;
                                        }
                                        break;
                                    case -575125681:
                                        if (!str3.equals("GiONEE_CBL7513")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 51;
                                        }
                                        break;
                                    case -521118391:
                                        if (!str3.equals("GIONEE_GBL7360")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 53;
                                        }
                                        break;
                                    case -430914369:
                                        if (!str3.equals("Pixi4-7_3G")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 105;
                                        }
                                        break;
                                    case -290434366:
                                        if (!str3.equals("taido_row")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 121;
                                        }
                                        break;
                                    case -282781963:
                                        if (!str3.equals("BLACK-1X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 17;
                                        }
                                        break;
                                    case -277133239:
                                        if (!str3.equals("Z12_PRO")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 138;
                                        }
                                        break;
                                    case -173639913:
                                        if (!str3.equals("ELUGA_A3_Pro")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 31;
                                        }
                                        break;
                                    case -56598463:
                                        if (!str3.equals("woods_fn")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 134;
                                        }
                                        break;
                                    case 2126:
                                        if (!str3.equals("C1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 20;
                                        }
                                        break;
                                    case 2564:
                                        if (!str3.equals("Q5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 113;
                                        }
                                        break;
                                    case 2715:
                                        if (!str3.equals("V1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 127;
                                        }
                                        break;
                                    case 2719:
                                        if (!str3.equals("V5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 129;
                                        }
                                        break;
                                    case 3091:
                                        if (!str3.equals("b5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 16;
                                        }
                                        break;
                                    case 3483:
                                        if (!str3.equals("mh")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 84;
                                        }
                                        break;
                                    case 73405:
                                        if (!str3.equals("JGZ")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 73;
                                        }
                                        break;
                                    case 75537:
                                        if (!str3.equals("M04")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 79;
                                        }
                                        break;
                                    case 75739:
                                        if (!str3.equals("M5c")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 80;
                                        }
                                        break;
                                    case 76779:
                                        if (!str3.equals("MX6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 86;
                                        }
                                        break;
                                    case 78669:
                                        if (!str3.equals("P85")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 94;
                                        }
                                        break;
                                    case 79305:
                                        if (!str3.equals("PLE")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 107;
                                        }
                                        break;
                                    case 80618:
                                        if (!str3.equals("QX1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 115;
                                        }
                                        break;
                                    case 88274:
                                        if (!str3.equals("Z80")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 139;
                                        }
                                        break;
                                    case 98846:
                                        if (!str3.equals("cv1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 26;
                                        }
                                        break;
                                    case 98848:
                                        if (!str3.equals("cv3")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 27;
                                        }
                                        break;
                                    case 99329:
                                        if (!str3.equals("deb")) {
                                            b3 = -1;
                                        }
                                        break;
                                    case 101481:
                                        if (!str3.equals("flo")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 49;
                                        }
                                        break;
                                    case 1513190:
                                        if (!str3.equals("1601")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 0;
                                        }
                                        break;
                                    case 1514184:
                                        if (!str3.equals("1713")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 1;
                                        }
                                        break;
                                    case 1514185:
                                        if (!str3.equals("1714")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 2;
                                        }
                                        break;
                                    case 2133089:
                                        if (!str3.equals("F01H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 36;
                                        }
                                        break;
                                    case 2133091:
                                        if (!str3.equals("F01J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 37;
                                        }
                                        break;
                                    case 2133120:
                                        if (!str3.equals("F02H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 38;
                                        }
                                        break;
                                    case 2133151:
                                        if (!str3.equals("F03H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 39;
                                        }
                                        break;
                                    case 2133182:
                                        if (!str3.equals("F04H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 40;
                                        }
                                        break;
                                    case 2133184:
                                        if (!str3.equals("F04J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 41;
                                        }
                                        break;
                                    case 2436959:
                                        if (!str3.equals("P681")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 93;
                                        }
                                        break;
                                    case 2463773:
                                        if (!str3.equals("Q350")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 109;
                                        }
                                        break;
                                    case 2464648:
                                        if (!str3.equals("Q427")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 111;
                                        }
                                        break;
                                    case 2689555:
                                        if (!str3.equals("XE2X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 136;
                                        }
                                        break;
                                    case 3154429:
                                        if (!str3.equals("fugu")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 50;
                                        }
                                        break;
                                    case 3284551:
                                        if (!str3.equals("kate")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 75;
                                        }
                                        break;
                                    case 3351335:
                                        if (!str3.equals("mido")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 85;
                                        }
                                        break;
                                    case 3386211:
                                        if (!str3.equals("p212")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 92;
                                        }
                                        break;
                                    case 41325051:
                                        if (!str3.equals("MEIZU_M5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 83;
                                        }
                                        break;
                                    case 51349633:
                                        if (!str3.equals("601LV")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 3;
                                        }
                                        break;
                                    case 51350594:
                                        if (!str3.equals("602LV")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 4;
                                        }
                                        break;
                                    case 55178625:
                                        if (!str3.equals("Aura_Note_2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 15;
                                        }
                                        break;
                                    case 61542055:
                                        if (!str3.equals("A1601")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 7;
                                        }
                                        break;
                                    case 65355429:
                                        if (!str3.equals("E5643")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 30;
                                        }
                                        break;
                                    case 66214468:
                                        if (!str3.equals("F3111")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 42;
                                        }
                                        break;
                                    case 66214470:
                                        if (!str3.equals("F3113")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 43;
                                        }
                                        break;
                                    case 66214473:
                                        if (!str3.equals("F3116")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 44;
                                        }
                                        break;
                                    case 66215429:
                                        if (!str3.equals("F3211")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 45;
                                        }
                                        break;
                                    case 66215431:
                                        if (!str3.equals("F3213")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 46;
                                        }
                                        break;
                                    case 66215433:
                                        if (!str3.equals("F3215")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 47;
                                        }
                                        break;
                                    case 66216390:
                                        if (!str3.equals("F3311")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 48;
                                        }
                                        break;
                                    case 76402249:
                                        if (!str3.equals("PRO7S")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 108;
                                        }
                                        break;
                                    case 76404105:
                                        if (!str3.equals("Q4260")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 110;
                                        }
                                        break;
                                    case 76404911:
                                        if (!str3.equals("Q4310")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 112;
                                        }
                                        break;
                                    case 80963634:
                                        if (!str3.equals("V23GB")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 128;
                                        }
                                        break;
                                    case 82882791:
                                        if (!str3.equals("X3_HK")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 135;
                                        }
                                        break;
                                    case 98715550:
                                        if (!str3.equals("i9031")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 67;
                                        }
                                        break;
                                    case 101370885:
                                        if (!str3.equals("l5460")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 76;
                                        }
                                        break;
                                    case 102844228:
                                        if (!str3.equals("le_x6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 77;
                                        }
                                        break;
                                    case 165221241:
                                        if (!str3.equals("A2016a40")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 8;
                                        }
                                        break;
                                    case 182191441:
                                        if (!str3.equals("CPY83_I00")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 25;
                                        }
                                        break;
                                    case 245388979:
                                        if (!str3.equals("marino_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 82;
                                        }
                                        break;
                                    case 287431619:
                                        if (!str3.equals("griffin")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 60;
                                        }
                                        break;
                                    case 307593612:
                                        if (!str3.equals("A7010a48")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 11;
                                        }
                                        break;
                                    case 308517133:
                                        if (!str3.equals("A7020a48")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 12;
                                        }
                                        break;
                                    case 316215098:
                                        if (!str3.equals("TB3-730F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 122;
                                        }
                                        break;
                                    case 316215116:
                                        if (!str3.equals("TB3-730X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 123;
                                        }
                                        break;
                                    case 316246811:
                                        if (!str3.equals("TB3-850F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 124;
                                        }
                                        break;
                                    case 316246818:
                                        if (!str3.equals("TB3-850M")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 125;
                                        }
                                        break;
                                    case 407160593:
                                        if (!str3.equals("Pixi5-10_4G")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 106;
                                        }
                                        break;
                                    case 507412548:
                                        if (!str3.equals("QM16XE_U")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 114;
                                        }
                                        break;
                                    case 793982701:
                                        if (!str3.equals("GIONEE_WBL5708")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 57;
                                        }
                                        break;
                                    case 794038622:
                                        if (!str3.equals("GIONEE_WBL7365")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 58;
                                        }
                                        break;
                                    case 794040393:
                                        if (!str3.equals("GIONEE_WBL7519")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 59;
                                        }
                                        break;
                                    case 835649806:
                                        if (!str3.equals("manning")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 81;
                                        }
                                        break;
                                    case 917340916:
                                        if (!str3.equals("A7000plus")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 10;
                                        }
                                        break;
                                    case 958008161:
                                        if (!str3.equals("j2xlteins")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 72;
                                        }
                                        break;
                                    case 1060579533:
                                        if (!str3.equals("panell_d")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 96;
                                        }
                                        break;
                                    case 1150207623:
                                        if (!str3.equals("LS-5017")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 78;
                                        }
                                        break;
                                    case 1176899427:
                                        if (!str3.equals("itel_S41")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 71;
                                        }
                                        break;
                                    case 1280332038:
                                        if (!str3.equals("hwALE-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 62;
                                        }
                                        break;
                                    case 1306947716:
                                        if (!str3.equals("EverStar_S")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 35;
                                        }
                                        break;
                                    case 1349174697:
                                        if (!str3.equals("htc_e56ml_dtul")) {
                                            b3 = -1;
                                        } else {
                                            b3 = Base64.padSymbol;
                                        }
                                        break;
                                    case 1522194893:
                                        if (!str3.equals("woods_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 133;
                                        }
                                        break;
                                    case 1691543273:
                                        if (!str3.equals("CPH1609")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 23;
                                        }
                                        break;
                                    case 1691544261:
                                        if (!str3.equals("CPH1715")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 24;
                                        }
                                        break;
                                    case 1709443163:
                                        if (!str3.equals("iball8735_9806")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 68;
                                        }
                                        break;
                                    case 1865889110:
                                        if (!str3.equals("santoni")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 117;
                                        }
                                        break;
                                    case 1906253259:
                                        if (!str3.equals("PB2-670M")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 100;
                                        }
                                        break;
                                    case 1977196784:
                                        if (!str3.equals("Infinix-X572")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 69;
                                        }
                                        break;
                                    case 2006372676:
                                        if (!str3.equals("BRAVIA_ATV3_4K")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 19;
                                        }
                                        break;
                                    case 2019281702:
                                        if (!str3.equals("DM-01K")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 29;
                                        }
                                        break;
                                    case 2029784656:
                                        if (!str3.equals("HWBLN-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 63;
                                        }
                                        break;
                                    case 2030379515:
                                        if (!str3.equals("HWCAM-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SignedBytes.MAX_POWER_OF_TWO;
                                        }
                                        break;
                                    case 2033393791:
                                        if (!str3.equals("ASUS_X00AD_2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 14;
                                        }
                                        break;
                                    case 2047190025:
                                        if (!str3.equals("ELUGA_Note")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 32;
                                        }
                                        break;
                                    case 2047252157:
                                        if (!str3.equals("ELUGA_Prim")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 33;
                                        }
                                        break;
                                    case 2048319463:
                                        if (!str3.equals("HWVNS-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 65;
                                        }
                                        break;
                                    case 2048855701:
                                        if (!str3.equals("HWWAS-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 66;
                                        }
                                        break;
                                    default:
                                        b3 = -1;
                                        break;
                                }
                                switch (b3) {
                                    default:
                                        if (str2.hashCode() == -594534941) {
                                            b4 = 0;
                                        }
                                        if (b4 == 0) {
                                        }
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 13:
                                    case 14:
                                    case 15:
                                    case 16:
                                    case 17:
                                    case 18:
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                    case 29:
                                    case 30:
                                    case 31:
                                    case 32:
                                    case 33:
                                    case 34:
                                    case 35:
                                    case 36:
                                    case 37:
                                    case 38:
                                    case 39:
                                    case 40:
                                    case 41:
                                    case 42:
                                    case 43:
                                    case 44:
                                    case 45:
                                    case 46:
                                    case 47:
                                    case 48:
                                    case 49:
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                    case 56:
                                    case 57:
                                    case 58:
                                    case 59:
                                    case 60:
                                    case 61:
                                    case 62:
                                    case 63:
                                    case 64:
                                    case 65:
                                    case 66:
                                    case 67:
                                    case 68:
                                    case 69:
                                    case 70:
                                    case 71:
                                    case 72:
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                    case 80:
                                    case 81:
                                    case 82:
                                    case 83:
                                    case 84:
                                    case 85:
                                    case 86:
                                    case 87:
                                    case 88:
                                    case 89:
                                    case 90:
                                    case 91:
                                    case 92:
                                    case 93:
                                    case 94:
                                    case 95:
                                    case 96:
                                    case 97:
                                    case 98:
                                    case 99:
                                    case 100:
                                    case 101:
                                    case 102:
                                    case 103:
                                    case 104:
                                    case 105:
                                    case 106:
                                    case 107:
                                    case 108:
                                    case 109:
                                    case 110:
                                    case 111:
                                    case 112:
                                    case 113:
                                    case 114:
                                    case 115:
                                    case 116:
                                    case 117:
                                    case 118:
                                    case 119:
                                    case 120:
                                    case 121:
                                    case 122:
                                    case 123:
                                    case 124:
                                    case 125:
                                    case 126:
                                    case WorkQueueKt.MASK /* 127 */:
                                    case 128:
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 132:
                                    case 133:
                                    case 134:
                                    case 135:
                                    case 136:
                                    case 137:
                                    case 138:
                                    case 139:
                                        z = true;
                                        break;
                                }
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                            z = true;
                            break;
                    }
                } else {
                    str2 = zzei.zzd;
                    switch (str2.hashCode()) {
                        case -349662828:
                            if (!str2.equals("AFTJMST12")) {
                                b = -1;
                            } else {
                                b = 6;
                            }
                            break;
                        case -321033677:
                            if (!str2.equals("AFTKMST12")) {
                                b = -1;
                            } else {
                                b = 7;
                            }
                            break;
                        case 2006354:
                            if (!str2.equals("AFTA")) {
                                b = -1;
                            } else {
                                b = 0;
                            }
                            break;
                        case 2006367:
                            if (!str2.equals("AFTN")) {
                                b = -1;
                            } else {
                                b = 1;
                            }
                            break;
                        case 2006371:
                            if (!str2.equals("AFTR")) {
                                b = -1;
                            } else {
                                b = 2;
                            }
                            break;
                        case 1785421873:
                            if (!str2.equals("AFTEU011")) {
                                b = -1;
                            } else {
                                b = 3;
                            }
                            break;
                        case 1785421876:
                            if (!str2.equals("AFTEU014")) {
                                b = -1;
                            } else {
                                b = 4;
                            }
                            break;
                        case 1798172390:
                            if (!str2.equals("AFTSO001")) {
                                b = -1;
                            } else {
                                b = 8;
                            }
                            break;
                        case 2119412532:
                            if (!str2.equals("AFTEUFF014")) {
                                b = -1;
                            } else {
                                b = 5;
                            }
                            break;
                        default:
                            b = -1;
                            break;
                    }
                    switch (b) {
                        default:
                            if (zzei.zza <= 26) {
                                str3 = zzei.zzb;
                                switch (str3.hashCode()) {
                                    case -2144781245:
                                        if (!str3.equals("GIONEE_SWW1609")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 54;
                                        }
                                        break;
                                    case -2144781185:
                                        if (!str3.equals("GIONEE_SWW1627")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 55;
                                        }
                                        break;
                                    case -2144781160:
                                        if (!str3.equals("GIONEE_SWW1631")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 56;
                                        }
                                        break;
                                    case -2097309513:
                                        if (!str3.equals("K50a40")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 74;
                                        }
                                        break;
                                    case -2022874474:
                                        if (!str3.equals("CP8676_I02")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 22;
                                        }
                                        break;
                                    case -1978993182:
                                        if (!str3.equals("NX541J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 89;
                                        }
                                        break;
                                    case -1978990237:
                                        if (!str3.equals("NX573J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 90;
                                        }
                                        break;
                                    case -1936688988:
                                        if (!str3.equals("PGN528")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 101;
                                        }
                                        break;
                                    case -1936688066:
                                        if (!str3.equals("PGN610")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 102;
                                        }
                                        break;
                                    case -1936688065:
                                        if (!str3.equals("PGN611")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 103;
                                        }
                                        break;
                                    case -1931988508:
                                        if (!str3.equals("AquaPowerM")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 13;
                                        }
                                        break;
                                    case -1885099851:
                                        if (!str3.equals("RAIJIN")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 116;
                                        }
                                        break;
                                    case -1696512866:
                                        if (!str3.equals("XT1663")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 137;
                                        }
                                        break;
                                    case -1680025915:
                                        if (!str3.equals("ComioS1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 21;
                                        }
                                        break;
                                    case -1615810839:
                                        if (!str3.equals("Phantom6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 104;
                                        }
                                        break;
                                    case -1600724499:
                                        if (!str3.equals("pacificrim")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 95;
                                        }
                                        break;
                                    case -1554255044:
                                        if (!str3.equals("vernee_M5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 130;
                                        }
                                        break;
                                    case -1481772737:
                                        if (!str3.equals("panell_dl")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 97;
                                        }
                                        break;
                                    case -1481772730:
                                        if (!str3.equals("panell_ds")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 98;
                                        }
                                        break;
                                    case -1481772729:
                                        if (!str3.equals("panell_dt")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 99;
                                        }
                                        break;
                                    case -1320080169:
                                        if (!str3.equals("GiONEE_GBL7319")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 52;
                                        }
                                        break;
                                    case -1217592143:
                                        if (!str3.equals("BRAVIA_ATV2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 18;
                                        }
                                        break;
                                    case -1180384755:
                                        if (!str3.equals("iris60")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 70;
                                        }
                                        break;
                                    case -1139198265:
                                        if (!str3.equals("Slate_Pro")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 118;
                                        }
                                        break;
                                    case -1052835013:
                                        if (!str3.equals("namath")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 87;
                                        }
                                        break;
                                    case -993250464:
                                        if (!str3.equals("A10-70F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 5;
                                        }
                                        break;
                                    case -993250458:
                                        if (!str3.equals("A10-70L")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 6;
                                        }
                                        break;
                                    case -965403638:
                                        if (!str3.equals("s905x018")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 120;
                                        }
                                        break;
                                    case -958336948:
                                        if (!str3.equals("ELUGA_Ray_X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 34;
                                        }
                                        break;
                                    case -879245230:
                                        if (!str3.equals("tcl_eu")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 126;
                                        }
                                        break;
                                    case -842500323:
                                        if (!str3.equals("nicklaus_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 88;
                                        }
                                        break;
                                    case -821392978:
                                        if (!str3.equals("A7000-a")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 9;
                                        }
                                        break;
                                    case -797483286:
                                        if (!str3.equals("SVP-DTV15")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 119;
                                        }
                                        break;
                                    case -794946968:
                                        if (!str3.equals("watson")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 131;
                                        }
                                        break;
                                    case -788334647:
                                        if (!str3.equals("whyred")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 132;
                                        }
                                        break;
                                    case -782144577:
                                        if (!str3.equals("OnePlus5T")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 91;
                                        }
                                        break;
                                    case -575125681:
                                        if (!str3.equals("GiONEE_CBL7513")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 51;
                                        }
                                        break;
                                    case -521118391:
                                        if (!str3.equals("GIONEE_GBL7360")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 53;
                                        }
                                        break;
                                    case -430914369:
                                        if (!str3.equals("Pixi4-7_3G")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 105;
                                        }
                                        break;
                                    case -290434366:
                                        if (!str3.equals("taido_row")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 121;
                                        }
                                        break;
                                    case -282781963:
                                        if (!str3.equals("BLACK-1X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 17;
                                        }
                                        break;
                                    case -277133239:
                                        if (!str3.equals("Z12_PRO")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 138;
                                        }
                                        break;
                                    case -173639913:
                                        if (!str3.equals("ELUGA_A3_Pro")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 31;
                                        }
                                        break;
                                    case -56598463:
                                        if (!str3.equals("woods_fn")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 134;
                                        }
                                        break;
                                    case 2126:
                                        if (!str3.equals("C1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 20;
                                        }
                                        break;
                                    case 2564:
                                        if (!str3.equals("Q5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 113;
                                        }
                                        break;
                                    case 2715:
                                        if (!str3.equals("V1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 127;
                                        }
                                        break;
                                    case 2719:
                                        if (!str3.equals("V5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 129;
                                        }
                                        break;
                                    case 3091:
                                        if (!str3.equals("b5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 16;
                                        }
                                        break;
                                    case 3483:
                                        if (!str3.equals("mh")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 84;
                                        }
                                        break;
                                    case 73405:
                                        if (!str3.equals("JGZ")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 73;
                                        }
                                        break;
                                    case 75537:
                                        if (!str3.equals("M04")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 79;
                                        }
                                        break;
                                    case 75739:
                                        if (!str3.equals("M5c")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 80;
                                        }
                                        break;
                                    case 76779:
                                        if (!str3.equals("MX6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 86;
                                        }
                                        break;
                                    case 78669:
                                        if (!str3.equals("P85")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 94;
                                        }
                                        break;
                                    case 79305:
                                        if (!str3.equals("PLE")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 107;
                                        }
                                        break;
                                    case 80618:
                                        if (!str3.equals("QX1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 115;
                                        }
                                        break;
                                    case 88274:
                                        if (!str3.equals("Z80")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 139;
                                        }
                                        break;
                                    case 98846:
                                        if (!str3.equals("cv1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 26;
                                        }
                                        break;
                                    case 98848:
                                        if (!str3.equals("cv3")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 27;
                                        }
                                        break;
                                    case 99329:
                                        if (!str3.equals("deb")) {
                                            b3 = -1;
                                        }
                                        break;
                                    case 101481:
                                        if (!str3.equals("flo")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 49;
                                        }
                                        break;
                                    case 1513190:
                                        if (!str3.equals("1601")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 0;
                                        }
                                        break;
                                    case 1514184:
                                        if (!str3.equals("1713")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 1;
                                        }
                                        break;
                                    case 1514185:
                                        if (!str3.equals("1714")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 2;
                                        }
                                        break;
                                    case 2133089:
                                        if (!str3.equals("F01H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 36;
                                        }
                                        break;
                                    case 2133091:
                                        if (!str3.equals("F01J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 37;
                                        }
                                        break;
                                    case 2133120:
                                        if (!str3.equals("F02H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 38;
                                        }
                                        break;
                                    case 2133151:
                                        if (!str3.equals("F03H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 39;
                                        }
                                        break;
                                    case 2133182:
                                        if (!str3.equals("F04H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 40;
                                        }
                                        break;
                                    case 2133184:
                                        if (!str3.equals("F04J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 41;
                                        }
                                        break;
                                    case 2436959:
                                        if (!str3.equals("P681")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 93;
                                        }
                                        break;
                                    case 2463773:
                                        if (!str3.equals("Q350")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 109;
                                        }
                                        break;
                                    case 2464648:
                                        if (!str3.equals("Q427")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 111;
                                        }
                                        break;
                                    case 2689555:
                                        if (!str3.equals("XE2X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 136;
                                        }
                                        break;
                                    case 3154429:
                                        if (!str3.equals("fugu")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 50;
                                        }
                                        break;
                                    case 3284551:
                                        if (!str3.equals("kate")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 75;
                                        }
                                        break;
                                    case 3351335:
                                        if (!str3.equals("mido")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 85;
                                        }
                                        break;
                                    case 3386211:
                                        if (!str3.equals("p212")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 92;
                                        }
                                        break;
                                    case 41325051:
                                        if (!str3.equals("MEIZU_M5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 83;
                                        }
                                        break;
                                    case 51349633:
                                        if (!str3.equals("601LV")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 3;
                                        }
                                        break;
                                    case 51350594:
                                        if (!str3.equals("602LV")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 4;
                                        }
                                        break;
                                    case 55178625:
                                        if (!str3.equals("Aura_Note_2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 15;
                                        }
                                        break;
                                    case 61542055:
                                        if (!str3.equals("A1601")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 7;
                                        }
                                        break;
                                    case 65355429:
                                        if (!str3.equals("E5643")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 30;
                                        }
                                        break;
                                    case 66214468:
                                        if (!str3.equals("F3111")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 42;
                                        }
                                        break;
                                    case 66214470:
                                        if (!str3.equals("F3113")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 43;
                                        }
                                        break;
                                    case 66214473:
                                        if (!str3.equals("F3116")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 44;
                                        }
                                        break;
                                    case 66215429:
                                        if (!str3.equals("F3211")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 45;
                                        }
                                        break;
                                    case 66215431:
                                        if (!str3.equals("F3213")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 46;
                                        }
                                        break;
                                    case 66215433:
                                        if (!str3.equals("F3215")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 47;
                                        }
                                        break;
                                    case 66216390:
                                        if (!str3.equals("F3311")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 48;
                                        }
                                        break;
                                    case 76402249:
                                        if (!str3.equals("PRO7S")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 108;
                                        }
                                        break;
                                    case 76404105:
                                        if (!str3.equals("Q4260")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 110;
                                        }
                                        break;
                                    case 76404911:
                                        if (!str3.equals("Q4310")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 112;
                                        }
                                        break;
                                    case 80963634:
                                        if (!str3.equals("V23GB")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 128;
                                        }
                                        break;
                                    case 82882791:
                                        if (!str3.equals("X3_HK")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 135;
                                        }
                                        break;
                                    case 98715550:
                                        if (!str3.equals("i9031")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 67;
                                        }
                                        break;
                                    case 101370885:
                                        if (!str3.equals("l5460")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 76;
                                        }
                                        break;
                                    case 102844228:
                                        if (!str3.equals("le_x6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 77;
                                        }
                                        break;
                                    case 165221241:
                                        if (!str3.equals("A2016a40")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 8;
                                        }
                                        break;
                                    case 182191441:
                                        if (!str3.equals("CPY83_I00")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 25;
                                        }
                                        break;
                                    case 245388979:
                                        if (!str3.equals("marino_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 82;
                                        }
                                        break;
                                    case 287431619:
                                        if (!str3.equals("griffin")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 60;
                                        }
                                        break;
                                    case 307593612:
                                        if (!str3.equals("A7010a48")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 11;
                                        }
                                        break;
                                    case 308517133:
                                        if (!str3.equals("A7020a48")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 12;
                                        }
                                        break;
                                    case 316215098:
                                        if (!str3.equals("TB3-730F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 122;
                                        }
                                        break;
                                    case 316215116:
                                        if (!str3.equals("TB3-730X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 123;
                                        }
                                        break;
                                    case 316246811:
                                        if (!str3.equals("TB3-850F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 124;
                                        }
                                        break;
                                    case 316246818:
                                        if (!str3.equals("TB3-850M")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 125;
                                        }
                                        break;
                                    case 407160593:
                                        if (!str3.equals("Pixi5-10_4G")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 106;
                                        }
                                        break;
                                    case 507412548:
                                        if (!str3.equals("QM16XE_U")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 114;
                                        }
                                        break;
                                    case 793982701:
                                        if (!str3.equals("GIONEE_WBL5708")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 57;
                                        }
                                        break;
                                    case 794038622:
                                        if (!str3.equals("GIONEE_WBL7365")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 58;
                                        }
                                        break;
                                    case 794040393:
                                        if (!str3.equals("GIONEE_WBL7519")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 59;
                                        }
                                        break;
                                    case 835649806:
                                        if (!str3.equals("manning")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 81;
                                        }
                                        break;
                                    case 917340916:
                                        if (!str3.equals("A7000plus")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 10;
                                        }
                                        break;
                                    case 958008161:
                                        if (!str3.equals("j2xlteins")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 72;
                                        }
                                        break;
                                    case 1060579533:
                                        if (!str3.equals("panell_d")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 96;
                                        }
                                        break;
                                    case 1150207623:
                                        if (!str3.equals("LS-5017")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 78;
                                        }
                                        break;
                                    case 1176899427:
                                        if (!str3.equals("itel_S41")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 71;
                                        }
                                        break;
                                    case 1280332038:
                                        if (!str3.equals("hwALE-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 62;
                                        }
                                        break;
                                    case 1306947716:
                                        if (!str3.equals("EverStar_S")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 35;
                                        }
                                        break;
                                    case 1349174697:
                                        if (!str3.equals("htc_e56ml_dtul")) {
                                            b3 = -1;
                                        } else {
                                            b3 = Base64.padSymbol;
                                        }
                                        break;
                                    case 1522194893:
                                        if (!str3.equals("woods_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 133;
                                        }
                                        break;
                                    case 1691543273:
                                        if (!str3.equals("CPH1609")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 23;
                                        }
                                        break;
                                    case 1691544261:
                                        if (!str3.equals("CPH1715")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 24;
                                        }
                                        break;
                                    case 1709443163:
                                        if (!str3.equals("iball8735_9806")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 68;
                                        }
                                        break;
                                    case 1865889110:
                                        if (!str3.equals("santoni")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 117;
                                        }
                                        break;
                                    case 1906253259:
                                        if (!str3.equals("PB2-670M")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 100;
                                        }
                                        break;
                                    case 1977196784:
                                        if (!str3.equals("Infinix-X572")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 69;
                                        }
                                        break;
                                    case 2006372676:
                                        if (!str3.equals("BRAVIA_ATV3_4K")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 19;
                                        }
                                        break;
                                    case 2019281702:
                                        if (!str3.equals("DM-01K")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 29;
                                        }
                                        break;
                                    case 2029784656:
                                        if (!str3.equals("HWBLN-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 63;
                                        }
                                        break;
                                    case 2030379515:
                                        if (!str3.equals("HWCAM-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SignedBytes.MAX_POWER_OF_TWO;
                                        }
                                        break;
                                    case 2033393791:
                                        if (!str3.equals("ASUS_X00AD_2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 14;
                                        }
                                        break;
                                    case 2047190025:
                                        if (!str3.equals("ELUGA_Note")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 32;
                                        }
                                        break;
                                    case 2047252157:
                                        if (!str3.equals("ELUGA_Prim")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 33;
                                        }
                                        break;
                                    case 2048319463:
                                        if (!str3.equals("HWVNS-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 65;
                                        }
                                        break;
                                    case 2048855701:
                                        if (!str3.equals("HWWAS-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 66;
                                        }
                                        break;
                                    default:
                                        b3 = -1;
                                        break;
                                }
                                switch (b3) {
                                    default:
                                        if (str2.hashCode() == -594534941) {
                                            b4 = 0;
                                        }
                                        if (b4 == 0) {
                                        }
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 13:
                                    case 14:
                                    case 15:
                                    case 16:
                                    case 17:
                                    case 18:
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                    case 29:
                                    case 30:
                                    case 31:
                                    case 32:
                                    case 33:
                                    case 34:
                                    case 35:
                                    case 36:
                                    case 37:
                                    case 38:
                                    case 39:
                                    case 40:
                                    case 41:
                                    case 42:
                                    case 43:
                                    case 44:
                                    case 45:
                                    case 46:
                                    case 47:
                                    case 48:
                                    case 49:
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                    case 56:
                                    case 57:
                                    case 58:
                                    case 59:
                                    case 60:
                                    case 61:
                                    case 62:
                                    case 63:
                                    case 64:
                                    case 65:
                                    case 66:
                                    case 67:
                                    case 68:
                                    case 69:
                                    case 70:
                                    case 71:
                                    case 72:
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                    case 80:
                                    case 81:
                                    case 82:
                                    case 83:
                                    case 84:
                                    case 85:
                                    case 86:
                                    case 87:
                                    case 88:
                                    case 89:
                                    case 90:
                                    case 91:
                                    case 92:
                                    case 93:
                                    case 94:
                                    case 95:
                                    case 96:
                                    case 97:
                                    case 98:
                                    case 99:
                                    case 100:
                                    case 101:
                                    case 102:
                                    case 103:
                                    case 104:
                                    case 105:
                                    case 106:
                                    case 107:
                                    case 108:
                                    case 109:
                                    case 110:
                                    case 111:
                                    case 112:
                                    case 113:
                                    case 114:
                                    case 115:
                                    case 116:
                                    case 117:
                                    case 118:
                                    case 119:
                                    case 120:
                                    case 121:
                                    case 122:
                                    case 123:
                                    case 124:
                                    case 125:
                                    case 126:
                                    case WorkQueueKt.MASK /* 127 */:
                                    case 128:
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 132:
                                    case 133:
                                    case 134:
                                    case 135:
                                    case 136:
                                    case 137:
                                    case 138:
                                    case 139:
                                        z = true;
                                        break;
                                }
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                            z = true;
                            break;
                    }
                }
                zzd = z;
                zzc = true;
            }
        }
        return zzd;
    }

    protected static final boolean zzaV(zzsg zzsgVar) {
        return zzei.zza >= 35 && zzsgVar.zzh;
    }

    private final Surface zzaW(zzsg zzsgVar) {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            return zzabhVar.zza();
        }
        Surface surface = this.zzq;
        if (surface != null) {
            return surface;
        }
        if (zzaV(zzsgVar)) {
            return null;
        }
        zzcw.zzf(zzbc(zzsgVar));
        zzzs zzzsVar = this.zzr;
        if (zzzsVar != null) {
            if (zzzsVar.zza != zzsgVar.zzf) {
                zzba();
            }
        }
        if (this.zzr == null) {
            this.zzr = zzzs.zza(this.zze, zzsgVar.zzf);
        }
        return this.zzr;
    }

    private static List zzaX(Context context, zzsp zzspVar, zzab zzabVar, boolean z, boolean z2) throws zzsu {
        if (zzabVar.zzo == null) {
            return zzfxn.zzn();
        }
        if (zzei.zza >= 26 && "video/dolby-vision".equals(zzabVar.zzo) && !zzzn.zza(context)) {
            List listZzc = zzta.zzc(zzspVar, zzabVar, z, z2);
            if (!listZzc.isEmpty()) {
                return listZzc;
            }
        }
        return zzta.zze(zzspVar, zzabVar, z, z2);
    }

    private final void zzaY() {
        zzcd zzcdVar = this.zzE;
        if (zzcdVar != null) {
            this.zzg.zzt(zzcdVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresNonNull({"displaySurface"})
    public final void zzaZ() {
        this.zzg.zzq(this.zzq);
        this.zzt = true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:40:0x0087  */
    public static int zzad(zzsg zzsgVar, zzab zzabVar) {
        int iIntValue;
        int i = zzabVar.zzv;
        int i2 = zzabVar.zzw;
        if (i != -1 && i2 != -1) {
            String str = zzabVar.zzo;
            str.getClass();
            if ("video/dolby-vision".equals(str)) {
                int i3 = zzta.zza;
                Pair pairZza = zzcy.zza(zzabVar);
                str = (pairZza == null || !((iIntValue = ((Integer) pairZza.first).intValue()) == 512 || iIntValue == 1 || iIntValue == 2)) ? MimeTypes.VIDEO_H265 : MimeTypes.VIDEO_H264;
            }
            int i4 = 4;
            switch (str) {
                case "video/3gpp":
                case "video/mp4v-es":
                case "video/av01":
                case "video/x-vnd.on2.vp8":
                    return ((i * i2) * 3) / i4;
                case "video/hevc":
                    return Math.max(2097152, ((i * i2) * 3) / 4);
                case "video/avc":
                    if (!"BRAVIA 4K 2015".equals(zzei.zzd) && (!"Amazon".equals(zzei.zzc) || (!"KFSOWI".equals(zzei.zzd) && (!"AFTS".equals(zzei.zzd) || !zzsgVar.zzf)))) {
                        return ((((i + 15) / 16) * ((i2 + 15) / 16)) * 768) / 4;
                    }
                    break;
                case "video/x-vnd.on2.vp9":
                    i4 = 8;
                    return ((i * i2) * 3) / i4;
            }
        }
        return -1;
    }

    protected static int zzae(zzsg zzsgVar, zzab zzabVar) {
        if (zzabVar.zzp == -1) {
            return zzad(zzsgVar, zzabVar);
        }
        int size = zzabVar.zzr.size();
        int length = 0;
        for (int i = 0; i < size; i++) {
            length += ((byte[]) zzabVar.zzr.get(i)).length;
        }
        return zzabVar.zzp + length;
    }

    private final void zzba() {
        zzzs zzzsVar = this.zzr;
        if (zzzsVar != null) {
            zzzsVar.release();
            this.zzr = null;
        }
    }

    private final boolean zzbb(zzsg zzsgVar) {
        Surface surface = this.zzq;
        return (surface != null && surface.isValid()) || zzaV(zzsgVar) || zzbc(zzsgVar);
    }

    private final boolean zzbc(zzsg zzsgVar) {
        if (zzei.zza < 23 || zzaU(zzsgVar.zza)) {
            return false;
        }
        return !zzsgVar.zzf || zzzs.zzb(this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzA() {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null || !this.zzf) {
            return;
        }
        zzabhVar.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    protected final void zzC() {
        try {
            super.zzC();
        } finally {
            this.zzo = false;
            this.zzI = -9223372036854775807L;
            zzba();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzD() {
        this.zzx = 0;
        this.zzw = zzi().zzb();
        this.zzA = 0L;
        this.zzB = 0;
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzj();
        } else {
            this.zzi.zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzE() {
        if (this.zzx > 0) {
            long jZzb = zzi().zzb();
            this.zzg.zzd(this.zzx, jZzb - this.zzw);
            this.zzx = 0;
            this.zzw = jZzb;
        }
        int i = this.zzB;
        if (i != 0) {
            this.zzg.zzr(this.zzA, i);
            this.zzA = 0L;
            this.zzB = 0;
        }
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzk();
        } else {
            this.zzi.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    protected final void zzF(zzab[] zzabVarArr, long j, long j2, zzug zzugVar) throws zzib {
        super.zzF(zzabVarArr, j, j2, zzugVar);
        if (this.zzI == -9223372036854775807L) {
            this.zzI = j;
        }
        zzbq zzbqVarZzh = zzh();
        if (zzbqVarZzh.zzo()) {
            this.zzJ = -9223372036854775807L;
        } else {
            this.zzJ = zzbqVarZzh.zzn(zzugVar.zza, new zzbo()).zzd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlj
    public final void zzM(float f, float f2) throws zzib {
        super.zzM(f, f2);
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzq(f);
        } else {
            this.zzi.zzn(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlj, com.google.android.gms.internal.ads.zzlm
    public final String zzU() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzlj
    public final void zzV(long j, long j2) throws zzib {
        super.zzV(j, j2);
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            try {
                zzabhVar.zzm(j, j2);
            } catch (zzabg e) {
                throw zzcW(e, e.zza, false, 7001);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzlj
    public final boolean zzW() {
        if (!super.zzW()) {
            return false;
        }
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null) {
            return true;
        }
        zzabhVar.zzv();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzlj
    public final boolean zzX() {
        boolean zZzX = super.zzX();
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            return zzabhVar.zzx(zZzX);
        }
        if (zZzX && (zzaz() == null || this.zzq == null)) {
            return true;
        }
        return this.zzi.zzo(zZzX);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final float zzZ(float f, zzab zzabVar, zzab[] zzabVarArr) {
        float fMax = -1.0f;
        for (zzab zzabVar2 : zzabVarArr) {
            float f2 = zzabVar2.zzx;
            if (f2 != -1.0f) {
                fMax = Math.max(fMax, f2);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final zzsf zzaA(Throwable th, zzsg zzsgVar) {
        return new zzzk(th, zzsgVar, this.zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzaD(long j) {
        super.zzaD(j);
        this.zzz--;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzaE(zzhh zzhhVar) throws zzib {
        this.zzz++;
        int i = zzei.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzaF(zzab zzabVar) throws zzib {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null || zzabhVar.zzw()) {
            return;
        }
        try {
            zzabhVar.zze(zzabVar);
        } catch (zzabg e) {
            throw zzcW(e, zzabVar, false, 7000);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzaH() {
        super.zzaH();
        this.zzz = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final boolean zzaN(zzsg zzsgVar) {
        return zzbb(zzsgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final boolean zzaO(zzhh zzhhVar) {
        if (zzhhVar.zzi() && !zzQ() && !zzhhVar.zzh() && this.zzJ != -9223372036854775807L) {
            if (this.zzJ - (zzhhVar.zze - zzav()) > 100000 && !zzhhVar.zzl() && zzhhVar.zze < zzf()) {
                return true;
            }
        }
        return false;
    }

    protected final void zzaQ(zzsd zzsdVar, int i, long j) {
        Trace.beginSection("skipVideoBuffer");
        zzsdVar.zzo(i, false);
        Trace.endSection();
        this.zza.zzf++;
    }

    protected final void zzaR(int i, int i2) {
        zzhs zzhsVar = this.zza;
        zzhsVar.zzh += i;
        int i3 = i + i2;
        zzhsVar.zzg += i3;
        this.zzx += i3;
        int i4 = this.zzy + i3;
        this.zzy = i4;
        zzhsVar.zzi = Math.max(i4, zzhsVar.zzi);
    }

    protected final void zzaS(long j) {
        zzhs zzhsVar = this.zza;
        zzhsVar.zzk += j;
        zzhsVar.zzl++;
        this.zzA += j;
        this.zzB++;
    }

    protected final boolean zzaT(long j, boolean z) throws zzib {
        int iZzd = zzd(j);
        if (iZzd == 0) {
            return false;
        }
        if (z) {
            zzhs zzhsVar = this.zza;
            zzhsVar.zzd += iZzd;
            zzhsVar.zzf += this.zzz;
        } else {
            this.zza.zzj++;
            zzaR(iZzd, this.zzz);
        }
        zzaJ();
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzd(false);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final int zzaa(zzsp zzspVar, zzab zzabVar) throws zzsu {
        boolean z;
        if (!zzbb.zzi(zzabVar.zzo)) {
            return 128;
        }
        Context context = this.zze;
        int i = 0;
        boolean z2 = zzabVar.zzs != null;
        List listZzaX = zzaX(context, zzspVar, zzabVar, z2, false);
        if (z2 && listZzaX.isEmpty()) {
            listZzaX = zzaX(context, zzspVar, zzabVar, false, false);
        }
        if (listZzaX.isEmpty()) {
            return 129;
        }
        if (!zzaP(zzabVar)) {
            return 130;
        }
        zzsg zzsgVar = (zzsg) listZzaX.get(0);
        boolean zZze = zzsgVar.zze(zzabVar);
        if (!zZze) {
            int i2 = 1;
            while (true) {
                if (i2 >= listZzaX.size()) {
                    z = true;
                    break;
                }
                zzsg zzsgVar2 = (zzsg) listZzaX.get(i2);
                if (zzsgVar2.zze(zzabVar)) {
                    zzsgVar = zzsgVar2;
                    z = false;
                    zZze = true;
                    break;
                }
                i2++;
            }
        } else {
            z = true;
            break;
        }
        int i3 = true != zZze ? 3 : 4;
        int i4 = true != zzsgVar.zzf(zzabVar) ? 8 : 16;
        int i5 = true != zzsgVar.zzg ? 0 : 64;
        int i6 = true != z ? 0 : 128;
        if (zzei.zza >= 26 && "video/dolby-vision".equals(zzabVar.zzo) && !zzzn.zza(context)) {
            i6 = 256;
        }
        if (zZze) {
            List listZzaX2 = zzaX(context, zzspVar, zzabVar, z2, true);
            if (!listZzaX2.isEmpty()) {
                zzsg zzsgVar3 = (zzsg) zzta.zzf(listZzaX2, zzabVar).get(0);
                if (zzsgVar3.zze(zzabVar) && zzsgVar3.zzf(zzabVar)) {
                    i = 32;
                }
            }
        }
        return i6 | i3 | i4 | i | i5;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final zzht zzab(zzsg zzsgVar, zzab zzabVar, zzab zzabVar2) {
        int i;
        int i2;
        zzht zzhtVarZzb = zzsgVar.zzb(zzabVar, zzabVar2);
        int i3 = zzhtVarZzb.zze;
        zzzo zzzoVar = this.zzk;
        zzzoVar.getClass();
        if (zzabVar2.zzv > zzzoVar.zza || zzabVar2.zzw > zzzoVar.zzb) {
            i3 |= 256;
        }
        if (zzae(zzsgVar, zzabVar2) > zzzoVar.zzc) {
            i3 |= 64;
        }
        String str = zzsgVar.zza;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = zzhtVarZzb.zzd;
            i2 = 0;
        }
        return new zzht(str, zzabVar, zzabVar2, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final zzht zzac(zzke zzkeVar) throws zzib {
        zzht zzhtVarZzac = super.zzac(zzkeVar);
        zzab zzabVar = zzkeVar.zza;
        zzabVar.getClass();
        this.zzg.zzf(zzabVar, zzhtVarZzac);
        return zzhtVarZzac;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final zzsa zzaf(zzsg zzsgVar, zzab zzabVar, MediaCrypto mediaCrypto, float f) {
        Point pointZza;
        int i;
        int i2;
        int iZzad;
        zzab[] zzabVarArrZzT = zzT();
        int length = zzabVarArrZzT.length;
        int iZzae = zzae(zzsgVar, zzabVar);
        int iMax = zzabVar.zzv;
        int iMax2 = zzabVar.zzw;
        if (length != 1) {
            boolean z = false;
            for (int i3 = 0; i3 < length; i3++) {
                zzab zzabVarZzag = zzabVarArrZzT[i3];
                if (zzabVar.zzC != null && zzabVarZzag.zzC == null) {
                    zzz zzzVarZzb = zzabVarZzag.zzb();
                    zzzVarZzb.zzB(zzabVar.zzC);
                    zzabVarZzag = zzzVarZzb.zzag();
                }
                if (zzsgVar.zzb(zzabVar, zzabVarZzag).zzd != 0) {
                    int i4 = zzabVarZzag.zzv;
                    z |= i4 == -1 || zzabVarZzag.zzw == -1;
                    iMax = Math.max(iMax, i4);
                    iMax2 = Math.max(iMax2, zzabVarZzag.zzw);
                    iZzae = Math.max(iZzae, zzae(zzsgVar, zzabVarZzag));
                }
            }
            if (z) {
                zzdo.zzf("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
                int i5 = zzabVar.zzw;
                int i6 = zzabVar.zzv;
                boolean z2 = i5 > i6;
                int i7 = z2 ? i5 : i6;
                if (true == z2) {
                    i5 = i6;
                }
                int[] iArr = zzb;
                int i8 = 0;
                while (true) {
                    if (i8 < 9) {
                        float f2 = i5;
                        float f3 = i7;
                        int i9 = iArr[i8];
                        int[] iArr2 = iArr;
                        float f4 = i9;
                        if (i9 > i7 && (i = (int) (f4 * (f2 / f3))) > i5) {
                            int i10 = true != z2 ? i9 : i;
                            if (true != z2) {
                                i9 = i;
                            }
                            pointZza = zzsgVar.zza(i10, i9);
                            float f5 = zzabVar.zzx;
                            if (pointZza != null) {
                                if (zzsgVar.zzg(pointZza.x, pointZza.y, f5)) {
                                    break;
                                }
                            }
                            i8++;
                            z2 = z2;
                            iArr = iArr2;
                            i5 = i5;
                        }
                    }
                    pointZza = null;
                    break;
                }
                if (pointZza != null) {
                    iMax = Math.max(iMax, pointZza.x);
                    iMax2 = Math.max(iMax2, pointZza.y);
                    zzz zzzVarZzb2 = zzabVar.zzb();
                    zzzVarZzb2.zzaf(iMax);
                    zzzVarZzb2.zzK(iMax2);
                    iZzae = Math.max(iZzae, zzad(zzsgVar, zzzVarZzb2.zzag()));
                    zzdo.zzf("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
                }
            }
        } else if (iZzae != -1 && (iZzad = zzad(zzsgVar, zzabVar)) != -1) {
            iZzae = Math.min((int) (iZzae * 1.5f), iZzad);
        }
        String str = zzsgVar.zzc;
        zzzo zzzoVar = new zzzo(iMax, iMax2, iZzae);
        this.zzk = zzzoVar;
        boolean z3 = this.zzh;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", zzabVar.zzv);
        mediaFormat.setInteger("height", zzabVar.zzw);
        zzdr.zzb(mediaFormat, zzabVar.zzr);
        float f6 = zzabVar.zzx;
        if (f6 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f6);
        }
        zzdr.zza(mediaFormat, "rotation-degrees", zzabVar.zzy);
        zzk zzkVar = zzabVar.zzC;
        if (zzkVar != null) {
            zzdr.zza(mediaFormat, "color-transfer", zzkVar.zzd);
            zzdr.zza(mediaFormat, "color-standard", zzkVar.zzb);
            zzdr.zza(mediaFormat, "color-range", zzkVar.zzc);
            byte[] bArr = zzkVar.zze;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(zzabVar.zzo)) {
            int i11 = zzta.zza;
            Pair pairZza = zzcy.zza(zzabVar);
            if (pairZza != null) {
                zzdr.zza(mediaFormat, Scopes.PROFILE, ((Integer) pairZza.first).intValue());
            }
        }
        mediaFormat.setInteger("max-width", zzzoVar.zza);
        mediaFormat.setInteger("max-height", zzzoVar.zzb);
        zzdr.zza(mediaFormat, "max-input-size", zzzoVar.zzc);
        if (zzei.zza >= 23) {
            mediaFormat.setInteger(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z3) {
            mediaFormat.setInteger("no-post-process", 1);
            i2 = 0;
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            i2 = 0;
        }
        if (zzei.zza >= 35) {
            mediaFormat.setInteger("importance", Math.max(i2, -this.zzF));
        }
        Surface surfaceZzaW = zzaW(zzsgVar);
        if (this.zzn != null && !zzei.zzK(this.zze)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return zzsa.zzb(zzsgVar, mediaFormat, zzabVar, surfaceZzaW, null);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final List zzag(zzsp zzspVar, zzab zzabVar, boolean z) throws zzsu {
        return zzta.zzf(zzaX(this.zze, zzspVar, zzabVar, false, false), zzabVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzaj(zzhh zzhhVar) throws zzib {
        if (this.zzm) {
            ByteBuffer byteBuffer = zzhhVar.zzf;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zzsd zzsdVarZzaz = zzaz();
                        zzsdVarZzaz.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzsdVarZzaz.zzq(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzak(Exception exc) {
        zzdo.zzd("MediaCodecVideoRenderer", "Video codec error", exc);
        this.zzg.zzs(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzal(String str, zzsa zzsaVar, long j, long j2) {
        this.zzg.zza(str, j, j2);
        this.zzl = zzaU(str);
        zzsg zzsgVarZzaB = zzaB();
        zzsgVarZzaB.getClass();
        boolean z = false;
        if (zzei.zza >= 29 && "video/x-vnd.on2.vp9".equals(zzsgVarZzaB.zzb)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzsgVarZzaB.zzh()) {
                if (codecProfileLevel.profile == 16384) {
                    z = true;
                    break;
                }
            }
        }
        this.zzm = z;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzam(String str) {
        this.zzg.zzb(str);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzan(zzab zzabVar, MediaFormat mediaFormat) {
        zzsd zzsdVarZzaz = zzaz();
        if (zzsdVarZzaz != null) {
            zzsdVarZzaz.zzr(this.zzu);
        }
        mediaFormat.getClass();
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        int integer = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer2 = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        float integer3 = zzabVar.zzz;
        if (zzei.zza >= 30 && mediaFormat.containsKey("sar-width") && mediaFormat.containsKey("sar-height")) {
            integer3 = mediaFormat.getInteger("sar-width") / mediaFormat.getInteger("sar-height");
        }
        int i = zzabVar.zzy;
        if (i == 90 || i == 270) {
            integer3 = 1.0f / integer3;
            int i2 = integer2;
            integer2 = integer;
            integer = i2;
        }
        this.zzD = new zzcd(integer, integer2, integer3);
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null || !this.zzK) {
            this.zzi.zzl(zzabVar.zzx);
        } else {
            zzz zzzVarZzb = zzabVar.zzb();
            zzzVarZzb.zzaf(integer);
            zzzVarZzb.zzK(integer2);
            zzzVarZzb.zzW(integer3);
            zzabhVar.zzg(1, zzzVarZzb.zzag());
        }
        this.zzK = false;
    }

    protected final void zzao(zzsd zzsdVar, int i, long j, long j2) {
        Trace.beginSection("releaseOutputBuffer");
        zzsdVar.zzn(i, j2);
        Trace.endSection();
        this.zza.zze++;
        this.zzy = 0;
        if (this.zzn == null) {
            zzcd zzcdVar = this.zzD;
            if (!zzcdVar.equals(zzcd.zza) && !zzcdVar.equals(this.zzE)) {
                this.zzE = zzcdVar;
                this.zzg.zzt(zzcdVar);
            }
            if (!this.zzi.zzp() || this.zzq == null) {
                return;
            }
            zzaZ();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzap() {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzr(zzaw(), zzav(), -this.zzI, zzf());
        } else {
            this.zzi.zzf();
        }
        this.zzK = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final int zzau(zzhh zzhhVar) {
        int i = zzei.zza;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlj
    public final void zzt() {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzc();
        } else {
            this.zzi.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    protected final void zzx() {
        this.zzE = null;
        this.zzJ = -9223372036854775807L;
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzh();
        } else {
            this.zzi.zzd();
        }
        this.zzt = false;
        try {
            super.zzx();
        } finally {
            this.zzg.zzc(this.zza);
            this.zzg.zzt(zzcd.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    protected final void zzy(boolean z, boolean z2) throws zzib {
        super.zzy(z, z2);
        zzn();
        this.zzg.zze(this.zza);
        if (!this.zzo) {
            if (this.zzp != null && this.zzn == null) {
                zzzw zzzwVar = new zzzw(this.zze, this.zzi);
                zzzwVar.zzd(zzi());
                this.zzn = zzzwVar.zze().zzh();
            }
            this.zzo = true;
        }
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null) {
            this.zzi.zzk(zzi());
            this.zzi.zze(z2);
            return;
        }
        zzabhVar.zzo(new zzzl(this), zzgcz.zzc());
        zzaai zzaaiVar = this.zzH;
        if (zzaaiVar != null) {
            this.zzn.zzt(zzaaiVar);
        }
        if (this.zzq != null && !this.zzs.equals(zzdz.zza)) {
            this.zzn.zzp(this.zzq, this.zzs);
        }
        this.zzn.zzn(this.zzv);
        this.zzn.zzq(zzat());
        List list = this.zzp;
        if (list != null) {
            this.zzn.zzs(list);
        }
        this.zzn.zzi(z2);
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    protected final void zzz(long j, boolean z) throws zzib {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzd(true);
            this.zzn.zzr(zzaw(), zzav(), -this.zzI, zzf());
            this.zzK = true;
        }
        super.zzz(j, z);
        if (this.zzn == null) {
            this.zzi.zzi();
        }
        if (z) {
            zzabh zzabhVar2 = this.zzn;
            if (zzabhVar2 != null) {
                zzabhVar2.zzf(false);
            } else {
                this.zzi.zzc(false);
            }
        }
        this.zzy = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final boolean zzar(long j, long j2, zzsd zzsdVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzab zzabVar) throws zzib {
        boolean z3;
        zzsdVar.getClass();
        long jZzav = j3 - zzav();
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null) {
            int iZza = this.zzi.zza(j3, j, j2, zzaw(), z2, this.zzj);
            if (iZza == 4) {
                return false;
            }
            if (z && !z2) {
                zzaQ(zzsdVar, i, jZzav);
                return true;
            }
            if (this.zzq == null) {
                if (this.zzj.zzc() >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                    return false;
                }
                zzaQ(zzsdVar, i, jZzav);
                zzaS(this.zzj.zzc());
                return true;
            }
            if (iZza == 0) {
                zzao(zzsdVar, i, jZzav, zzi().zzc());
                zzaS(this.zzj.zzc());
                return true;
            }
            if (iZza == 1) {
                zzaaj zzaajVar = this.zzj;
                long jZzd = zzaajVar.zzd();
                long jZzc = zzaajVar.zzc();
                if (jZzd == this.zzC) {
                    zzaQ(zzsdVar, i, jZzav);
                } else {
                    zzao(zzsdVar, i, jZzav, jZzd);
                }
                zzaS(jZzc);
                this.zzC = jZzd;
                return true;
            }
            if (iZza == 2) {
                Trace.beginSection("dropVideoBuffer");
                zzsdVar.zzo(i, false);
                Trace.endSection();
                zzaR(0, 1);
                zzaS(this.zzj.zzc());
                return true;
            }
            if (iZza != 3) {
                if (iZza == 5) {
                    return false;
                }
                throw new IllegalStateException(String.valueOf(iZza));
            }
            zzaQ(zzsdVar, i, jZzav);
            zzaS(this.zzj.zzc());
            return true;
        }
        try {
            z3 = false;
            try {
                return zzabhVar.zzu(j3 + (-this.zzI), z2, j, j2, new zzzm(this, zzsdVar, i, jZzav));
            } catch (zzabg e) {
                e = e;
                throw zzcW(e, e.zza, z3, 7001);
            }
        } catch (zzabg e2) {
            e = e2;
            z3 = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzle
    public final void zzu(int i, Object obj) throws zzib {
        if (i == 1) {
            Surface surface = obj instanceof Surface ? (Surface) obj : null;
            if (this.zzq == surface) {
                if (surface != null) {
                    zzaY();
                    Surface surface2 = this.zzq;
                    if (surface2 == null || !this.zzt) {
                        return;
                    }
                    this.zzg.zzq(surface2);
                    return;
                }
                return;
            }
            this.zzq = surface;
            if (this.zzn == null) {
                this.zzi.zzm(surface);
            }
            this.zzt = false;
            int iZzcT = zzcT();
            zzsd zzsdVarZzaz = zzaz();
            if (zzsdVarZzaz != null && this.zzn == null) {
                zzsg zzsgVarZzaB = zzaB();
                zzsgVarZzaB.getClass();
                boolean zZzbb = zzbb(zzsgVarZzaB);
                if (zzei.zza < 23 || !zZzbb || this.zzl) {
                    zzaG();
                    zzaC();
                } else {
                    Surface surfaceZzaW = zzaW(zzsgVarZzaB);
                    if (zzei.zza >= 23 && surfaceZzaW != null) {
                        zzsdVarZzaz.zzp(surfaceZzaW);
                    } else {
                        if (zzei.zza < 35) {
                            throw new IllegalStateException();
                        }
                        zzsdVarZzaz.zzi();
                    }
                }
            }
            if (surface == null) {
                this.zzE = null;
                zzabh zzabhVar = this.zzn;
                if (zzabhVar != null) {
                    zzabhVar.zzb();
                    return;
                }
                return;
            }
            zzaY();
            if (iZzcT == 2) {
                zzabh zzabhVar2 = this.zzn;
                if (zzabhVar2 != null) {
                    zzabhVar2.zzf(true);
                    return;
                } else {
                    this.zzi.zzc(true);
                    return;
                }
            }
            return;
        }
        if (i == 7) {
            obj.getClass();
            zzaai zzaaiVar = (zzaai) obj;
            this.zzH = zzaaiVar;
            zzabh zzabhVar3 = this.zzn;
            if (zzabhVar3 != null) {
                zzabhVar3.zzt(zzaaiVar);
                return;
            }
            return;
        }
        if (i == 10) {
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            if (this.zzG != iIntValue) {
                this.zzG = iIntValue;
                return;
            }
            return;
        }
        if (i == 16) {
            obj.getClass();
            this.zzF = ((Integer) obj).intValue();
            zzsd zzsdVarZzaz2 = zzaz();
            if (zzsdVarZzaz2 == null || zzei.zza < 35) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.zzF));
            zzsdVarZzaz2.zzq(bundle);
            return;
        }
        if (i == 4) {
            obj.getClass();
            int iIntValue2 = ((Integer) obj).intValue();
            this.zzu = iIntValue2;
            zzsd zzsdVarZzaz3 = zzaz();
            if (zzsdVarZzaz3 != null) {
                zzsdVarZzaz3.zzr(iIntValue2);
                return;
            }
            return;
        }
        if (i == 5) {
            obj.getClass();
            int iIntValue3 = ((Integer) obj).intValue();
            this.zzv = iIntValue3;
            zzabh zzabhVar4 = this.zzn;
            if (zzabhVar4 != null) {
                zzabhVar4.zzn(iIntValue3);
                return;
            } else {
                this.zzi.zzj(iIntValue3);
                return;
            }
        }
        if (i == 13) {
            obj.getClass();
            List list = (List) obj;
            this.zzp = list;
            zzabh zzabhVar5 = this.zzn;
            if (zzabhVar5 != null) {
                zzabhVar5.zzs(list);
                return;
            }
            return;
        }
        if (i != 14) {
            super.zzu(i, obj);
            return;
        }
        obj.getClass();
        zzdz zzdzVar = (zzdz) obj;
        if (zzdzVar.zzb() == 0 || zzdzVar.zza() == 0) {
            return;
        }
        this.zzs = zzdzVar;
        zzabh zzabhVar6 = this.zzn;
        if (zzabhVar6 != null) {
            Surface surface3 = this.zzq;
            zzcw.zzb(surface3);
            zzabhVar6.zzp(surface3, zzdzVar);
        }
    }
}
