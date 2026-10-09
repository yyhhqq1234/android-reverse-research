package org.json;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.environment.workerthread.WorkerManager;
import org.json.environment.workerthread.WorkerResult;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class w7 {

    class a implements WorkerManager.WorkEndedListener<x7> {
        final /* synthetic */ b a;

        a(b bVar) {
            this.a = bVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.ironsource.environment.workerthread.WorkerManager.WorkEndedListener
        public void onWorkCompleted(List<WorkerResult<x7>> list, long j) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (WorkerResult<x7> workerResult : list) {
                if (workerResult instanceof WorkerResult.Completed) {
                    arrayList2.add((x7) ((WorkerResult.Completed) workerResult).data);
                } else if (workerResult instanceof WorkerResult.Canceled) {
                    arrayList.add(((t7) ((WorkerResult.Canceled) workerResult).callable).c());
                } else if (workerResult instanceof WorkerResult.Failed) {
                    WorkerResult.Failed failed = (WorkerResult.Failed) workerResult;
                    t7 t7Var = (t7) failed.callable;
                    arrayList2.add(new x7(t7Var.d(), t7Var.c(), null, 0L, failed.exception.getMessage()));
                }
            }
            w7.this.a(arrayList2, arrayList, j);
            this.a.a(arrayList2, j, arrayList);
        }

        @Override // com.ironsource.environment.workerthread.WorkerManager.WorkEndedListener
        public void onWorkFailed(String str) {
            String str2 = "failed to collect bidding data, error= " + str;
            IronLog.INTERNAL.verbose(str2);
            this.a.onFailure(str2);
        }
    }

    public interface b {
        void a(List<x7> list, long j, List<String> list2);

        void onFailure(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<x7> list, List<String> list2, long j) {
        IronLog ironLog;
        StringBuilder sb;
        String strB;
        IronLog.INTERNAL.verbose("tokens received=" + list.size() + ", reached timeout=" + list2.size() + ", total duration=" + j + " millis");
        for (x7 x7Var : list) {
            if (x7Var.a() != null) {
                ironLog = IronLog.INTERNAL;
                sb = new StringBuilder();
                sb.append(x7Var.c());
                sb.append(" - success (");
                sb.append(x7Var.e());
                strB = " millis)";
            } else {
                ironLog = IronLog.INTERNAL;
                sb = new StringBuilder();
                sb.append(x7Var.c());
                sb.append(" - failed (");
                sb.append(x7Var.e());
                sb.append(" millis) error: ");
                strB = x7Var.b();
            }
            sb.append(strB);
            ironLog.verbose(sb.toString());
        }
        for (String str : list2) {
            IronLog.INTERNAL.verbose(str + " reached timeout");
        }
    }

    public void a(List<t7> list, b bVar, long j, TimeUnit timeUnit) {
        try {
            if (list.isEmpty()) {
                IronLog.INTERNAL.verbose("BiddingDataCallable list is empty");
                return;
            }
            WorkerManager workerManager = new WorkerManager(IronSourceThreadManager.INSTANCE.getThreadPoolExecutor());
            Iterator<t7> it = list.iterator();
            while (it.hasNext()) {
                workerManager.addCallable(it.next());
            }
            IronLog.INTERNAL.verbose("instances=" + list.size() + ", timeout=" + j + " millis");
            workerManager.startWork(new a(bVar), j, timeUnit);
        } catch (Throwable th) {
            l9.d().a(th);
            String str = "Exception - failed to collect bidding data, error= " + th.getMessage();
            IronLog.INTERNAL.error(str);
            bVar.onFailure(str);
        }
    }
}
