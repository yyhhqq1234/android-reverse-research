using System;
using System.IO;
using System.Linq;
using Mono.Cecil;
using Mono.Cecil.Cil;

static class Patcher
{
    static ModuleDefinition Mod;
    static AssemblyDefinition FpA;
    static AssemblyDefinition MscA;

    static TypeDefinition Msc(string full) {
        var t = MscA.MainModule.Types.FirstOrDefault(x => x.FullName == full);
        if (t == null) throw new Exception("msc-miss " + full);
        return t;
    }
    static TypeReference Fp(string full) {
        var t = FpA.MainModule.Types.FirstOrDefault(x => x.FullName == full);
        if (t == null) throw new Exception("fp-miss " + full);
        return Mod.ImportReference(t);
    }
    static MethodReference MR(TypeDefinition td, string name, int pc) {
        var t = td;
        while (t != null) {
            foreach (var m in t.Methods)
                if (m.Name == name && m.Parameters.Count == pc)
                    return Mod.ImportReference(m);
            try { t = t.BaseType?.Resolve(); } catch { t = null; }
        }
        throw new Exception("mm-miss " + td.FullName + "." + name);
    }
    static FieldReference FF(string typeFull, string name) {
        var t = FpA.MainModule.Types.FirstOrDefault(x => x.FullName == typeFull);
        if (t == null) throw new Exception("ft-miss " + typeFull);
        foreach (var f in t.Fields)
            if (f.Name == name) return Mod.ImportReference(f);
        throw new Exception("ff-miss " + typeFull + "." + name);
    }
    static TypeDefinition Main(string full) {
        var t = Mod.Types.FirstOrDefault(x => x.FullName == full);
        if (t == null) throw new Exception("main-miss " + full);
        return t;
    }
    static TypeDefinition Nested(TypeDefinition g, string name) {
        foreach (var n in g.NestedTypes)
            if (n.Name == name) return n;
        throw new Exception("nt-miss " + name);
    }
    static MethodDefinition SM(TypeDefinition t, string name) {
        foreach (var m in t.Methods)
            if (m.Name == name) return m;
        throw new Exception("sm-miss " + t.Name + "." + name);
    }

    static MethodReference swNew, swWL, swClose, sbNew, sbApS, sbApO, sbTs, mkdir, concat;
    static VariableDefinition vSB, vSW;
    static MethodDefinition dm;

    static void EmitIndexed(string file, TypeDefinition nt, TypeReference st, string structFull, string[][] fields) {
        var il = dm.Body.GetILProcessor();
        var mCount = Mod.ImportReference(SM(nt, "Count"));
        var mGet = Mod.ImportReference(SM(nt, "GetByIndex"));
        il.Append(il.Create(OpCodes.Ldstr, "/sdcard/Android/data/com.tencent.tmgp.sgameceg/files/wzry-tables/" + file));
        il.Append(il.Create(OpCodes.Newobj, swNew));
        il.Append(il.Create(OpCodes.Stloc, vSW));
        il.Append(il.Create(OpCodes.Newobj, sbNew));
        il.Append(il.Create(OpCodes.Stloc, vSB));
        var vI = new VariableDefinition(Mod.TypeSystem.Int32);
        var vR = new VariableDefinition(st);
        dm.Body.Variables.Add(vI); dm.Body.Variables.Add(vR);
        il.Append(il.Create(OpCodes.Ldloc, vSW));
        il.Append(il.Create(OpCodes.Ldstr, "count="));
        il.Append(il.Create(OpCodes.Call, mCount));
        il.Append(il.Create(OpCodes.Box, Mod.TypeSystem.Int32));
        il.Append(il.Create(OpCodes.Call, concat));
        il.Append(il.Create(OpCodes.Callvirt, swWL));
        il.Append(il.Create(OpCodes.Ldc_I4_0));
        il.Append(il.Create(OpCodes.Stloc, vI));
        var loop = il.Create(OpCodes.Ldloc, vI);
        il.Append(loop);
        il.Append(il.Create(OpCodes.Call, mCount));
        il.Append(il.Create(OpCodes.Clt));
        var done = il.Create(OpCodes.Nop);
        il.Append(il.Create(OpCodes.Brfalse, done));
        il.Append(il.Create(OpCodes.Ldloc, vI));
        il.Append(il.Create(OpCodes.Call, mGet));
        il.Append(il.Create(OpCodes.Stloc, vR));
        il.Append(il.Create(OpCodes.Newobj, sbNew));
        il.Append(il.Create(OpCodes.Stloc, vSB));
        foreach (var fd in fields) {
            var fr = FF(structFull, fd[0]);
            il.Append(il.Create(OpCodes.Ldloc, vSB));
            il.Append(il.Create(OpCodes.Ldstr, fd[0] + "="));
            il.Append(il.Create(OpCodes.Callvirt, sbApS));
            il.Append(il.Create(OpCodes.Pop));
            il.Append(il.Create(OpCodes.Ldloc, vSB));
            if (fd[1] == "str") {
                il.Append(il.Create(OpCodes.Ldloca, vR));
                il.Append(il.Create(OpCodes.Ldfld, fr));
                var strT = fr.FieldType.Resolve();
                MethodReference tsm = null;
                foreach (var mm in strT.Methods)
                    if (mm.Name == "ToString" && mm.Parameters.Count == 0) tsm = Mod.ImportReference(mm);
                il.Append(il.Create(OpCodes.Call, tsm));
                il.Append(il.Create(OpCodes.Callvirt, sbApS));
            } else {
                il.Append(il.Create(OpCodes.Ldloc, vR));
                il.Append(il.Create(OpCodes.Ldfld, fr));
                TypeReference bt = Mod.TypeSystem.Int32;
                if (fd[1] == "u32") bt = Mod.TypeSystem.UInt32;
                else if (fd[1] == "byte") bt = Mod.TypeSystem.Byte;
                else if (fd[1] == "u16") bt = Mod.TypeSystem.UInt16;
                il.Append(il.Create(OpCodes.Box, bt));
                il.Append(il.Create(OpCodes.Callvirt, sbApO));
            }
            il.Append(il.Create(OpCodes.Pop));
            il.Append(il.Create(OpCodes.Ldloc, vSB));
            il.Append(il.Create(OpCodes.Ldstr, " "));
            il.Append(il.Create(OpCodes.Callvirt, sbApS));
            il.Append(il.Create(OpCodes.Pop));
        }
        il.Append(il.Create(OpCodes.Ldloc, vSW));
        il.Append(il.Create(OpCodes.Ldloc, vSB));
        il.Append(il.Create(OpCodes.Callvirt, sbTs));
        il.Append(il.Create(OpCodes.Callvirt, swWL));
        il.Append(il.Create(OpCodes.Ldloc, vI));
        il.Append(il.Create(OpCodes.Ldc_I4_1));
        il.Append(il.Create(OpCodes.Add));
        il.Append(il.Create(OpCodes.Stloc, vI));
        il.Append(il.Create(OpCodes.Br, loop));
        il.Append(done);
        il.Append(il.Create(OpCodes.Ldloc, vSW));
        il.Append(il.Create(OpCodes.Callvirt, swClose));
        Console.WriteLine("dumped " + file);
    }

    public static void Main(string[] args) {
        var unp = @"D:\APK-Reverse\projects\WZRY\_unpacked";
        var res = new DefaultAssemblyResolver();
        res.AddSearchDirectory(unp);
        res.AddSearchDirectory(@"D:\APK-Reverse\tools\_unified\bin");
        var rp = new ReaderParameters { AssemblyResolver = res };
        var asm = AssemblyDefinition.ReadAssembly(Path.Combine(unp, "Assembly-CSharp.dll"), rp);
        Mod = asm.MainModule;
        FpA = AssemblyDefinition.ReadAssembly(Path.Combine(unp, "Assembly-CSharp-firstpass.dll"));
        MscA = AssemblyDefinition.ReadAssembly(Path.Combine(unp, "apktool", "assets", "bin", "Data", "Managed", "mscorlib.dll"));

        // ===== 结构体布局转储（仅控制台，不改任何 IL）=====
        foreach (var tn in new[] { "ResData.ResHeroCfgInfo", "ResData.ResSkillCfgInfo", "ResData.ResSkillCombineCfgInfo",
                                    "Assets.Scripts.GameLogic.DataCenter.ActorStaticData",
                                    "Assets.Scripts.GameLogic.DataCenter.ActorStaticData/BaseAttribute",
                                    "Assets.Scripts.GameLogic.DataCenter.ActorMeta",
                                    "Assets.Scripts.GameSystem.ValueDataInfo",
                                    "SGW/stValueDataInfo" }) {
            var td0 = FpA.MainModule.Types.FirstOrDefault(x => x.FullName == tn)
                   ?? Mod.Types.FirstOrDefault(x => x.FullName == tn);
            if (td0 == null) { Console.WriteLine("LAYOUT-MISS " + tn); continue; }
            Console.WriteLine("=== LAYOUT " + tn + " classsize=" + td0.ClassSize + " pack=" + td0.PackingSize
                + " attrs=" + td0.Attributes + " ===");
            foreach (var f in td0.Fields)
                Console.WriteLine("  off=" + f.Offset + " (0x" + (f.Offset < 0 ? "NA" : f.Offset.ToString("x")) + ") "
                    + f.FieldType.Name + " " + f.Name);
        }

        // ===== 全托管程序集扫描：找 SGW/stValueDataInfo（不在 Assembly-CSharp 里）=====
        {
            var mgd = Path.Combine(unp, "apktool", "assets", "bin", "Data", "Managed");
            var res2 = new DefaultAssemblyResolver();
            res2.AddSearchDirectory(mgd);
            res2.AddSearchDirectory(@"D:\APK-Reverse\tools\_unified\bin");
            foreach (var dll in Directory.GetFiles(mgd, "*.dll")) {
                try {
                    var a2 = AssemblyDefinition.ReadAssembly(dll, new ReaderParameters { AssemblyResolver = res2 });
                    foreach (var t2 in a2.MainModule.GetTypes()) {
                        if (t2.Name == "stValueDataInfo" || t2.FullName == "SGW/stValueDataInfo"
                            || (t2.Name.StartsWith("stValueData") )) {
                            Console.WriteLine("=== FOUND " + t2.FullName + " in " + Path.GetFileName(dll)
                                + " classsize=" + t2.ClassSize + " pack=" + t2.PackingSize + " ===");
                            foreach (var f in t2.Fields)
                                Console.WriteLine("   [" + f.Offset + "] " + f.FieldType.Name + " " + f.Name);
                        }
                    }
                    a2.Dispose();
                } catch (Exception ex) { Console.WriteLine("scan-skip " + Path.GetFileName(dll) + " : " + ex.GetType().Name); }
            }
        }

        var tSW = Msc("System.IO.StreamWriter");
        var tDir = Msc("System.IO.Directory");
        var tSB = Msc("System.Text.StringBuilder");
        swNew = MR(tSW, ".ctor", 1); swWL = MR(tSW, "WriteLine", 1); swClose = MR(tSW, "Close", 0);
        sbNew = MR(tSB, ".ctor", 0); sbTs = MR(tSB, "ToString", 0);
        sbApS = null; sbApO = null;
        foreach (var m in tSB.Methods) {
            if (m.Name == "Append" && m.Parameters.Count == 1) {
                if (m.Parameters[0].ParameterType.FullName == "System.String") sbApS = Mod.ImportReference(m);
                if (m.Parameters[0].ParameterType.FullName == "System.Object") sbApO = Mod.ImportReference(m);
            }
        }
        mkdir = MR(tDir, "CreateDirectory", 1);
        var tStr = Msc("System.String");
        foreach (var m in tStr.Methods)
            if (m.Name == "Concat" && m.IsStatic && m.Parameters.Count == 2 && m.Parameters[0].ParameterType.FullName == "System.Object") { concat = Mod.ImportReference(m); break; }
        // early Debug.Log for dump error reporting (dump block built before V5 mLog)
        MethodReference mLogEarly = null;
        foreach (var tt0 in Mod.Types) {
            if (mLogEarly != null) break;
            foreach (var mm0 in tt0.Methods) {
                if (!mm0.HasBody) continue;
                foreach (var ii0 in mm0.Body.Instructions) {
                    var mr0 = ii0.Operand as MethodReference;
                    if (mr0 != null && mr0.FullName == "System.Void UnityEngine.Debug::Log(System.Object)") { mLogEarly = Mod.ImportReference(mr0); break; }
                }
                if (mLogEarly != null) break;
            }
        }
        if (mLogEarly == null) throw new Exception("debuglog-early-miss");

        // V2 P1-P6
        var t = Main("Assets.Scripts.GameLogic.SkillSlotLinker");
        var init = t.Methods.First(m => m.Name == "InitSkillSlot");
        foreach (var ins in init.Body.Instructions.ToArray()) {
            if (ins.Offset == 105 && ins.OpCode.ToString() == "ldc.i4.0") { ins.OpCode = OpCodes.Ldc_I4_M1; Console.WriteLine("P1 ok"); }
            if (ins.Offset == 113 && ins.OpCode.ToString() == "ldc.i4.0") { ins.OpCode = OpCodes.Ldc_I4_1; Console.WriteLine("P2 ok"); }
        }
        Ret0(Main("Assets.Scripts.GameLogic.SkillLinkerComponent").Methods.First(m => m.Name == "IsSkillSlotLimited"), "P3");
        Ret0(Main("Assets.Scripts.GameLogic.SkillLinkerComponent").Methods.First(m => m.Name == "IsSkillSlotForceLimited"), "P4");
        Ret0(Main("Assets.Scripts.GameSystem.CSkillButtonManager").Methods.First(m => m.Name == "IsSkillSlotLimited"), "P5");
        Ret1(t.Methods.First(m => m.Name == "IsEnabled"), "P6");
        // P8/P9: CD 不启动（"一段时间不可用"疑为 StartSkillCD/SetSkillCD）
        var fCurCd = Mod.ImportReference(t.Fields.First(f => f.Name == "CurSkillCD"));
        var fReady = Mod.ImportReference(t.Fields.First(f => f.Name == "IsCDReady"));
        foreach (var mn in new[] { "StartSkillCD", "SetSkillCD" }) {
            var mcd = t.Methods.First(m => m.Name == mn);
            var pcd = mcd.Body.GetILProcessor();
            mcd.Body.Instructions.Clear();
            pcd.Append(pcd.Create(OpCodes.Ldarg_0));
            pcd.Append(pcd.Create(OpCodes.Ldc_I4_0));
            pcd.Append(pcd.Create(OpCodes.Stfld, fCurCd));
            pcd.Append(pcd.Create(OpCodes.Ldarg_0));
            pcd.Append(pcd.Create(OpCodes.Ldc_I4_1));
            pcd.Append(pcd.Create(OpCodes.Stfld, fReady));
            pcd.Append(pcd.Create(OpCodes.Ret));
            Console.WriteLine("CD-noop:" + mn);
        }

        // P7 DumpTables — 独立新类型，不改既有类型布局
        bool withDump = args.Length > 0 && args[0] == "dump";
        if (withDump) {
        var tDump = new TypeDefinition("Assets.Scripts.GameLogic", "WzTableDump",
            Mono.Cecil.TypeAttributes.Public | Mono.Cecil.TypeAttributes.Sealed | Mono.Cecil.TypeAttributes.Abstract | Mono.Cecil.TypeAttributes.Class,
            Mod.TypeSystem.Object);
        Mod.Types.Add(tDump);
        var flag = new FieldDefinition("done", FieldAttributes.Private | FieldAttributes.Static, Mod.TypeSystem.Boolean);
        tDump.Fields.Add(flag);
        dm = new MethodDefinition("Run", Mono.Cecil.MethodAttributes.Public | Mono.Cecil.MethodAttributes.Static, Mod.TypeSystem.Void);
        tDump.Methods.Add(dm);
        dm.Body.InitLocals = true;
        var il = dm.Body.GetILProcessor();
        vSB = new VariableDefinition(Mod.ImportReference(tSB));
        vSW = new VariableDefinition(Mod.ImportReference(tSW));
        dm.Body.Variables.Add(vSB); dm.Body.Variables.Add(vSW);
        il.Append(il.Create(OpCodes.Ldstr, "/sdcard/Android/data/com.tencent.tmgp.sgameceg/files/wzry-tables/"));
        il.Append(il.Create(OpCodes.Call, mkdir));
        il.Append(il.Create(OpCodes.Pop));

        var gdm = Main("ResData.GameDataMgr");
        EmitIndexed("heroBuff.txt", Nested(gdm, "heroBuffDatabin"), Fp("ResData.ResHeroBuff"), "ResData.ResHeroBuff",
            new[] { new[] { "iHeroID", "i32" }, new[] { "bGroupID", "byte" } });
        EmitIndexed("skillCombine.txt", Nested(gdm, "skillCombineDatabin"), Fp("ResData.ResSkillCombineCfgInfo"), "ResData.ResSkillCombineCfgInfo",
            new[] { new[] { "iCfgID", "i32" }, new[] { "bEffectType", "byte" }, new[] { "bEffectSubType", "byte" }, new[] { "iDuration", "i32" }, new[] { "strIdSkillCombineName", "str" } });
        EmitIndexed("hero.txt", Nested(gdm, "heroDatabin"), Fp("ResData.ResHeroCfgInfo"), "ResData.ResHeroCfgInfo",
            new[] { new[] { "dwCfgID", "u32" }, new[] { "strIdName", "str" } });

        // skill brute force 1..60000
        var ntS = Nested(gdm, "skillDatabin");
        var stS = Fp("ResData.ResSkillCfgInfo");
        var mFind = Mod.ImportReference(ntS.Methods.First(m => m.Name == "FindByKey"));
        il.Append(il.Create(OpCodes.Ldstr, "/sdcard/Android/data/com.tencent.tmgp.sgameceg/files/wzry-tables/skill.txt"));
        il.Append(il.Create(OpCodes.Newobj, swNew));
        il.Append(il.Create(OpCodes.Stloc, vSW));
        il.Append(il.Create(OpCodes.Newobj, sbNew));
        il.Append(il.Create(OpCodes.Stloc, vSB));
        var vK = new VariableDefinition(Mod.TypeSystem.Int32);
        var vSR = new VariableDefinition(stS);
        var vOk = new VariableDefinition(Mod.TypeSystem.Boolean);
        dm.Body.Variables.Add(vK); dm.Body.Variables.Add(vSR); dm.Body.Variables.Add(vOk);
        il.Append(il.Create(OpCodes.Ldc_I4_1));
        il.Append(il.Create(OpCodes.Stloc, vK));
        var loopS = il.Create(OpCodes.Ldloc, vK);
        il.Append(loopS);
        il.Append(il.Create(OpCodes.Ldc_I4, 60000));
        il.Append(il.Create(OpCodes.Clt));
        var doneS = il.Create(OpCodes.Nop);
        il.Append(il.Create(OpCodes.Brfalse, doneS));
        il.Append(il.Create(OpCodes.Ldloca, vSR));
        il.Append(il.Create(OpCodes.Ldloc, vK));
        il.Append(il.Create(OpCodes.Call, mFind));
        il.Append(il.Create(OpCodes.Stloc, vOk));
        il.Append(il.Create(OpCodes.Ldloc, vOk));
        var skipS = il.Create(OpCodes.Nop);
        il.Append(il.Create(OpCodes.Brfalse, skipS));
        il.Append(il.Create(OpCodes.Newobj, sbNew));
        il.Append(il.Create(OpCodes.Stloc, vSB));
        foreach (var fd in new[] {
            new[] { "iCfgID", "i32" }, new[] { "bSkillType", "byte" }, new[] { "bBIngnoreDisable", "byte" },
            new[] { "bIngnoreOutOfControl", "byte" }, new[] { "bIsStunSkill", "byte" }, new[] { "iCoolDown", "i32" },
            new[] { "strIdSkillName", "str" } }) {
            var fr = FF("ResData.ResSkillCfgInfo", fd[0]);
            il.Append(il.Create(OpCodes.Ldloc, vSB));
            il.Append(il.Create(OpCodes.Ldstr, fd[0] + "="));
            il.Append(il.Create(OpCodes.Callvirt, sbApS));
            il.Append(il.Create(OpCodes.Pop));
            il.Append(il.Create(OpCodes.Ldloc, vSB));
            if (fd[1] == "str") {
                il.Append(il.Create(OpCodes.Ldloca, vSR));
                il.Append(il.Create(OpCodes.Ldfld, fr));
                var strT = fr.FieldType.Resolve();
                MethodReference tsm = null;
                foreach (var mm in strT.Methods)
                    if (mm.Name == "ToString" && mm.Parameters.Count == 0) tsm = Mod.ImportReference(mm);
                il.Append(il.Create(OpCodes.Call, tsm));
                il.Append(il.Create(OpCodes.Callvirt, sbApS));
            } else {
                il.Append(il.Create(OpCodes.Ldloc, vSR));
                il.Append(il.Create(OpCodes.Ldfld, fr));
                TypeReference bt = Mod.TypeSystem.Int32;
                if (fd[1] == "byte") bt = Mod.TypeSystem.Byte;
                il.Append(il.Create(OpCodes.Box, bt));
                il.Append(il.Create(OpCodes.Callvirt, sbApO));
            }
            il.Append(il.Create(OpCodes.Pop));
            il.Append(il.Create(OpCodes.Ldloc, vSB));
            il.Append(il.Create(OpCodes.Ldstr, " "));
            il.Append(il.Create(OpCodes.Callvirt, sbApS));
            il.Append(il.Create(OpCodes.Pop));
        }
        il.Append(il.Create(OpCodes.Ldloc, vSW));
        il.Append(il.Create(OpCodes.Ldloc, vSB));
        il.Append(il.Create(OpCodes.Callvirt, sbTs));
        il.Append(il.Create(OpCodes.Callvirt, swWL));
        il.Append(skipS);
        il.Append(il.Create(OpCodes.Ldloc, vK));
        il.Append(il.Create(OpCodes.Ldc_I4_1));
        il.Append(il.Create(OpCodes.Add));
        il.Append(il.Create(OpCodes.Stloc, vK));
        il.Append(il.Create(OpCodes.Br, loopS));
        il.Append(doneS);
        il.Append(il.Create(OpCodes.Ldloc, vSW));
        il.Append(il.Create(OpCodes.Callvirt, swClose));
        var retEnd = il.Create(OpCodes.Ret);
        il.Append(retEnd);
        Console.WriteLine("dumped skill.txt");
        var eh = new ExceptionHandler(ExceptionHandlerType.Catch);
        eh.TryStart = dm.Body.Instructions[0];
        eh.TryEnd = retEnd;
        var vEx = new VariableDefinition(Mod.ImportReference(Msc("System.Exception")));
        dm.Body.Variables.Add(vEx);
        var stEx = il.Create(OpCodes.Stloc, vEx);
        var ldTag = il.Create(OpCodes.Ldstr, "DUMP:ERR:");
        var ldEx = il.Create(OpCodes.Ldloc, vEx);
        var catEx = il.Create(OpCodes.Call, concat);
        var logEx = il.Create(OpCodes.Call, mLogEarly);
        var retH = il.Create(OpCodes.Ret);
        eh.HandlerStart = stEx;
        eh.HandlerEnd = retH;
        eh.CatchType = Mod.ImportReference(Msc("System.Exception"));
        il.Append(stEx);
        il.Append(ldTag);
        il.Append(ldEx);
        il.Append(catEx);
        il.Append(logEx);
        il.Append(retH);
        dm.Body.ExceptionHandlers.Add(eh);
        Console.WriteLine("dump-err-log hooked");
        }
        // V5: AddBuff头记buffID到logcat，零新类型/零文件/零线程（常开）
        MethodReference mLog = null;
        foreach (var tt in Mod.Types) {
            if (mLog != null) break;
            foreach (var mm in tt.Methods) {
                if (!mm.HasBody) continue;
                foreach (var ii in mm.Body.Instructions) {
                    var mr = ii.Operand as MethodReference;
                    if (mr != null && mr.FullName == "System.Void UnityEngine.Debug::Log(System.Object)") { mLog = Mod.ImportReference(mr); break; }
                }
                if (mLog != null) break;
            }
        }
        if (mLog == null) throw new Exception("debuglog-miss");
        var ab = Main("Assets.Scripts.GameLogic.BuffLinkerComponent").Methods.First(m => m.Name == "AddBuff");
        var abi = ab.Body.GetILProcessor();
        var first = ab.Body.Instructions[0];
        // V8p: 真神帧引用全从GodMode原生指令偷（CreateFrameCommand<SwitchActorSwitchGodMode>+FrameCommand::Send，同类同op）
        MethodReference mCreateGod = null, mSendGod = null;
        OpCode ocCreateGod = OpCodes.Call, ocSendGod = OpCodes.Callvirt;
        {
            var mGod = Mod.Types.First(t => t.Name == "CheatCommandBattleEntry").Methods.First(m => m.Name == "GodMode");
            foreach (var ii in mGod.Body.Instructions) {
                if (ii.Operand is MethodReference mr) {
                    if (mr.Name == "CreateFrameCommand" && mCreateGod == null) { mCreateGod = (MethodReference)ii.Operand; ocCreateGod = ii.OpCode; }
                    else if (mr.Name == "Send" && mSendGod == null) { mSendGod = (MethodReference)ii.Operand; ocSendGod = ii.OpCode; }
                }
            }
        }
        if (mCreateGod == null || mSendGod == null) throw new Exception("god-ref-miss");
        Console.WriteLine("god-refs create=" + mCreateGod.FullName + " send=" + mSendGod.FullName);
        // V8q: 读skillCombine.iDuration诊断（零风险，只打log，引用全偷原生FindByKey+iDuration）
        MethodReference mFindQ = null;
        FieldReference fDurQ = null;
        TypeReference stQ = null;
        {
            var gdmQ = Main("ResData.GameDataMgr");
            TypeDefinition ntQ = null;
            foreach (var n in gdmQ.NestedTypes) if (n.Name == "skillCombineDatabin") ntQ = n;
            if (ntQ == null) throw new Exception("databin-miss");
            foreach (var m in ntQ.Methods) if (m.Name == "FindByKey") mFindQ = Mod.ImportReference(m);
            stQ = Fp("ResData.ResSkillCombineCfgInfo");
            var tdQ = FpA.MainModule.Types.First(x => x.FullName == "ResData.ResSkillCombineCfgInfo");
            foreach (var f in tdQ.Fields) if (f.Name == "iDuration") fDurQ = Mod.ImportReference(f);
        }
        if (mFindQ == null || fDurQ == null) throw new Exception("dur-ref-miss");
        Console.WriteLine("dur-refs find=" + mFindQ.FullName + " field=" + fDurQ.FullName);
        ab.Body.InitLocals = true;
        var vCfgQ = new VariableDefinition(stQ);
        ab.Body.Variables.Add(vCfgQ);
        foreach (var DID in new[] { 225001, 225002, 225003, 911274 }) {
            var skipDur = abi.Create(OpCodes.Nop);
            abi.InsertBefore(first, abi.Create(OpCodes.Ldarg_1));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4, DID));
            abi.InsertBefore(first, abi.Create(OpCodes.Bne_Un, skipDur));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldloca, vCfgQ));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4, DID));
            abi.InsertBefore(first, abi.Create(OpCodes.Call, mFindQ));
            abi.InsertBefore(first, abi.Create(OpCodes.Pop));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldstr, "DUR:" + DID + ":"));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldloca, vCfgQ));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldfld, fDurQ));
            abi.InsertBefore(first, abi.Create(OpCodes.Box, Mod.TypeSystem.Int32));
            abi.InsertBefore(first, abi.Create(OpCodes.Call, concat));
            abi.InsertBefore(first, abi.Create(OpCodes.Call, mLog));
            // V9: 读表后立即把该ID的 iDuration 压到 1ms（若 native 读同表则眩晕/禁锁归零）
            abi.InsertBefore(first, abi.Create(OpCodes.Ldloca, vCfgQ));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4_1));
            abi.InsertBefore(first, abi.Create(OpCodes.Stfld, fDurQ));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldstr, "DURSHRINK:" + DID));
            abi.InsertBefore(first, abi.Create(OpCodes.Call, mLog));
            abi.InsertBefore(first, skipDur);
            Console.WriteLine("V8q dur-log + V9 shrink hooked id=" + DID);
        }
        // V9b: 战斗初始化（InitSkillSlot）也压时长，覆盖 native 早期读表
        {
            var init2 = t.Methods.First(m => m.Name == "InitSkillSlot");
            init2.Body.InitLocals = true;
            var vCfg2 = new VariableDefinition(stQ);
            init2.Body.Variables.Add(vCfg2);
            var i2 = init2.Body.GetILProcessor();
            var f2 = init2.Body.Instructions[0];
            foreach (var DID in new[] { 225001, 225002, 225003 }) {
                i2.InsertBefore(f2, i2.Create(OpCodes.Ldloca, vCfg2));
                i2.InsertBefore(f2, i2.Create(OpCodes.Ldc_I4, DID));
                i2.InsertBefore(f2, i2.Create(OpCodes.Call, mFindQ));
                i2.InsertBefore(f2, i2.Create(OpCodes.Pop));
                i2.InsertBefore(f2, i2.Create(OpCodes.Ldloca, vCfg2));
                i2.InsertBefore(f2, i2.Create(OpCodes.Ldc_I4_1));
                i2.InsertBefore(f2, i2.Create(OpCodes.Stfld, fDurQ));
            }
            i2.InsertBefore(f2, i2.Create(OpCodes.Ldstr, "INITSHRINK:done"));
            i2.InsertBefore(f2, i2.Create(OpCodes.Call, mLog));
            init2.Body.MaxStackSize = System.Math.Max(init2.Body.MaxStackSize, 16);
            Console.WriteLine("V9b initslot shrink hooked maxstack=" + init2.Body.MaxStackSize);
        }
        // ===== V11: 用官方 DT_UpdateData 把 iDuration 写回 native 表（持久：一次写回，重启仍生效） =====
        {
            var tDtF = Mod.Types.FirstOrDefault(x => x.FullName == "ResData._DatabinTableFuncs");
            if (tDtF == null) tDtF = FpA.MainModule.Types.FirstOrDefault(x => x.FullName == "ResData._DatabinTableFuncs");
            MethodReference mDtUpd = null;
            if (tDtF != null) {
                foreach (var m in tDtF.Methods)
                    if (m.Name == "DT_UpdateData") { mDtUpd = Mod.ImportReference(m); break; }
            }
            Console.WriteLine("V11 dtupdate-ref=" + (mDtUpd != null));
            if (mDtUpd != null) {
                foreach (var DID in new[] { 225001, 225002, 225003 }) {
                    var skipV11 = abi.Create(OpCodes.Nop);
                    abi.InsertBefore(first, abi.Create(OpCodes.Ldarg_1));
                    abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4, DID));
                    abi.InsertBefore(first, abi.Create(OpCodes.Bne_Un, skipV11));
                    // 1) FindByKey 拿副本
                    abi.InsertBefore(first, abi.Create(OpCodes.Ldloca, vCfgQ));
                    abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4, DID));
                    abi.InsertBefore(first, abi.Create(OpCodes.Call, mFindQ));
                    abi.InsertBefore(first, abi.Create(OpCodes.Pop));
                    // 2) cfg.iDuration = 1
                    abi.InsertBefore(first, abi.Create(OpCodes.Ldloca, vCfgQ));
                    abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4_1));
                    abi.InsertBefore(first, abi.Create(OpCodes.Stfld, fDurQ));
                    // 3) DT_UpdateData(21, (long)DID, (void*)&cfg)
                    abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4, 21));
                    abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4, DID));
                    abi.InsertBefore(first, abi.Create(OpCodes.Conv_I8));
                    abi.InsertBefore(first, abi.Create(OpCodes.Ldloca, vCfgQ));
                    abi.InsertBefore(first, abi.Create(OpCodes.Conv_U));
                    abi.InsertBefore(first, abi.Create(OpCodes.Call, mDtUpd));
                    abi.InsertBefore(first, abi.Create(OpCodes.Ldstr, "V11DTUPD:" + DID));
                    abi.InsertBefore(first, abi.Create(OpCodes.Call, mLog));
                    abi.InsertBefore(first, skipV11);
                    Console.WriteLine("V11 dt-update hooked id=" + DID);
                }
                // 关键: 同时挂 InitSkillSlot（战斗初始化即写回 native 表，保证 native 读表时已是 1ms）
                {
                    var init3 = t.Methods.First(m => m.Name == "InitSkillSlot");
                    init3.Body.InitLocals = true;
                    var vCfg3 = new VariableDefinition(stQ);
                    init3.Body.Variables.Add(vCfg3);
                    var i3 = init3.Body.GetILProcessor();
                    var f3 = init3.Body.Instructions[0];
                    foreach (var DID in new[] { 225001, 225002, 225003 }) {
                        i3.InsertBefore(f3, i3.Create(OpCodes.Ldloca, vCfg3));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Ldc_I4, DID));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Call, mFindQ));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Pop));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Ldloca, vCfg3));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Ldc_I4_1));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Stfld, fDurQ));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Ldc_I4, 21));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Ldc_I4, DID));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Conv_I8));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Ldloca, vCfg3));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Conv_U));
                        i3.InsertBefore(f3, i3.Create(OpCodes.Call, mDtUpd));
                    }
                    i3.InsertBefore(f3, i3.Create(OpCodes.Ldstr, "V11DTUPD:init"));
                    i3.InsertBefore(f3, i3.Create(OpCodes.Call, mLog));
                    init3.Body.MaxStackSize = System.Math.Max(init3.Body.MaxStackSize, 16);
                    Console.WriteLine("V11 dt-update also hooked on InitSkillSlot");
                }
            }
        }
        // ===== V10: 运行时扫 /proc/self/mem 改写 native 时长表本体（独立新类型，不动既有布局） =====
        MethodReference mReadAllText, mSplit, mIndexOfS, mSubstr2, mFsCtor, mSeek, mRead, mWrite, mClose, mTryParseU32, mToInt32, mGetLen, mMarshalCopy, mWriteI32, mPtrFromI64;
        // V12a: 遍历 hero 表打印 ID+名字（独立新类型 WzHeroDump）
        {
            Func<string, MethodReference> steal2 = (fn) => {
                foreach (var tt in Mod.Types) {
                    foreach (var mm in tt.Methods) {
                        if (!mm.HasBody) continue;
                        foreach (var ii in mm.Body.Instructions)
                            if (ii.Operand is MethodReference mr && mr.FullName == fn) return mr;
                    }
                }
                return null;
            };
            TypeDefinition gdm2 = null;
            foreach (var t2 in Mod.Types) if (t2.Name == "GameDataMgr") gdm2 = t2;
            TypeDefinition hdb = null;
            if (gdm2 != null) foreach (var n in gdm2.NestedTypes) if (n.Name == "heroDatabin") hdb = n;
            MethodReference mHCnt = null, mHGet = null;
            if (hdb != null) {
                foreach (var m in hdb.Methods) {
                    if (m.Name == "Count") mHCnt = Mod.ImportReference(m);
                    else if (m.Name == "GetByIndex") mHGet = Mod.ImportReference(m);
                }
            }
            TypeReference tHero = Fp("ResData.ResHeroCfgInfo");
            FieldReference fHeroId = null, fHeroName = null;
            var heroTd = FpA.MainModule.Types.FirstOrDefault(x => x.FullName == "ResData.ResHeroCfgInfo");
            if (heroTd != null) {
                foreach (var f in heroTd.Fields) {
                    if (f.Name == "dwCfgID") fHeroId = Mod.ImportReference(f);
                    else if (f.Name == "strIdName") fHeroName = Mod.ImportReference(f);
                }
            }
            var mSid2Str = steal2("System.String StringId2::op_Implicit(StringId2)");
            Console.WriteLine("V12a refs cnt=" + (mHCnt!=null) + " get=" + (mHGet!=null) + " id=" + (fHeroId!=null)
                + " name=" + (fHeroName!=null) + " sid2str=" + (mSid2Str!=null));
            if (mHCnt!=null && mHGet!=null && fHeroId!=null && fHeroName!=null && mSid2Str!=null) {
                var tHD = new TypeDefinition("Assets.Scripts.GameLogic", "WzHeroDump",
                    Mono.Cecil.TypeAttributes.Public | Mono.Cecil.TypeAttributes.Sealed | Mono.Cecil.TypeAttributes.Abstract | Mono.Cecil.TypeAttributes.Class,
                    Mod.TypeSystem.Object);
                Mod.Types.Add(tHD);
                var fHDDone = new FieldDefinition("done", FieldAttributes.Public | FieldAttributes.Static, Mod.TypeSystem.Boolean);
                tHD.Fields.Add(fHDDone);
                var rHDDone = Mod.ImportReference(fHDDone);
                var mHDRun = new MethodDefinition("Run", Mono.Cecil.MethodAttributes.Public | Mono.Cecil.MethodAttributes.Static, Mod.TypeSystem.Void);
                tHD.Methods.Add(mHDRun);
                mHDRun.Body.InitLocals = true;
                var il2 = mHDRun.Body.GetILProcessor();
                var vCfg = new VariableDefinition(tHero);
                var vI2 = new VariableDefinition(Mod.TypeSystem.Int32);
                var vN2 = new VariableDefinition(Mod.TypeSystem.Int32);
                var vS = new VariableDefinition(Mod.TypeSystem.String);
                mHDRun.Body.Variables.Add(vCfg); mHDRun.Body.Variables.Add(vI2);
                mHDRun.Body.Variables.Add(vN2); mHDRun.Body.Variables.Add(vS);
                il2.Append(il2.Create(OpCodes.Call, mHCnt));
                il2.Append(il2.Create(OpCodes.Stloc, vN2));
                il2.Append(il2.Create(OpCodes.Ldc_I4_0));
                il2.Append(il2.Create(OpCodes.Stloc, vI2));
                var lTop = il2.Create(OpCodes.Nop);
                var lEnd = il2.Create(OpCodes.Nop);
                il2.Append(il2.Create(OpCodes.Br, lTop));
                il2.Append(lTop);
                il2.Append(il2.Create(OpCodes.Ldloc, vI2));
                il2.Append(il2.Create(OpCodes.Ldloc, vN2));
                il2.Append(il2.Create(OpCodes.Bge, lEnd));
                il2.Append(il2.Create(OpCodes.Ldloc, vI2));
                il2.Append(il2.Create(OpCodes.Call, mHGet));
                il2.Append(il2.Create(OpCodes.Stloc, vCfg));
                // "HERO:" + (object)cfg.dwCfgID
                il2.Append(il2.Create(OpCodes.Ldstr, "HERO:"));
                il2.Append(il2.Create(OpCodes.Ldloc, vCfg));
                il2.Append(il2.Create(OpCodes.Ldfld, fHeroId));
                il2.Append(il2.Create(OpCodes.Box, Mod.TypeSystem.UInt32));
                il2.Append(il2.Create(OpCodes.Call, concat));
                // + ":" + (string)cfg.strIdName
                il2.Append(il2.Create(OpCodes.Ldstr, ":"));
                il2.Append(il2.Create(OpCodes.Call, concat));
                il2.Append(il2.Create(OpCodes.Ldloc, vCfg));
                il2.Append(il2.Create(OpCodes.Ldfld, fHeroName));
                il2.Append(il2.Create(OpCodes.Call, mSid2Str));
                il2.Append(il2.Create(OpCodes.Call, concat));
                il2.Append(il2.Create(OpCodes.Stloc, vS));
                il2.Append(il2.Create(OpCodes.Ldloc, vS));
                il2.Append(il2.Create(OpCodes.Call, mLog));
                // 若 dwCfgID==125(元歌) → 打印数值字段
                {
                    FieldReference fHP=null, fATT=null, fDEF=null, fRES=null, fSPD=null, fASPD=null, fCRIT=null,
                                   fHPL=null, fATGL=null, fDEFL=null, fSPDG=null;
                    foreach (var f in heroTd.Fields) {
                        if (f.Name=="iBaseHP") fHP=Mod.ImportReference(f);
                        else if (f.Name=="iBaseATT") fATT=Mod.ImportReference(f);
                        else if (f.Name=="iBaseDEF") fDEF=Mod.ImportReference(f);
                        else if (f.Name=="iBaseRES") fRES=Mod.ImportReference(f);
                        else if (f.Name=="iBaseSpeed") fSPD=Mod.ImportReference(f);
                        else if (f.Name=="iBaseAtkSpd") fASPD=Mod.ImportReference(f);
                        else if (f.Name=="iCritRate") fCRIT=Mod.ImportReference(f);
                        else if (f.Name=="iHPAddLvlup") fHPL=Mod.ImportReference(f);
                        else if (f.Name=="iAtkGrowth") fATGL=Mod.ImportReference(f);
                        else if (f.Name=="iDefGrowth") fDEFL=Mod.ImportReference(f);
                        else if (f.Name=="iBaseSpeed") fSPDG=Mod.ImportReference(f);
                    }
                    var skip125 = il2.Create(OpCodes.Nop);
                    il2.Append(il2.Create(OpCodes.Ldloc, vCfg));
                    il2.Append(il2.Create(OpCodes.Ldfld, fHeroId));
                    il2.Append(il2.Create(OpCodes.Ldc_I4, 125));
                    il2.Append(il2.Create(OpCodes.Bne_Un, skip125));
                    Action<string, FieldReference> emitNum = (tag, fr) => {
                        if (fr == null) return;
                        il2.Append(il2.Create(OpCodes.Ldstr, tag));
                        il2.Append(il2.Create(OpCodes.Ldloc, vCfg));
                        il2.Append(il2.Create(OpCodes.Ldfld, fr));
                        il2.Append(il2.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                        il2.Append(il2.Create(OpCodes.Call, concat));
                        il2.Append(il2.Create(OpCodes.Call, mLog));
                    };
                    emitNum("YG:HP=", fHP); emitNum("YG:ATT=", fATT); emitNum("YG:DEF=", fDEF);
                    emitNum("YG:RES=", fRES); emitNum("YG:SPD=", fSPD); emitNum("YG:ASPD=", fASPD);
                    emitNum("YG:CRIT=", fCRIT); emitNum("YG:HPADD=", fHPL); emitNum("YG:ATKG=", fATGL);
                    emitNum("YG:DEFG=", fDEFL);
                    il2.Append(skip125);
                }
                il2.Append(il2.Create(OpCodes.Ldloc, vI2));
                il2.Append(il2.Create(OpCodes.Ldc_I4_1));
                il2.Append(il2.Create(OpCodes.Add));
                il2.Append(il2.Create(OpCodes.Stloc, vI2));
                il2.Append(il2.Create(OpCodes.Br, lTop));
                il2.Append(lEnd);
                il2.Append(il2.Create(OpCodes.Ldstr, "HERODUMP:end"));
                il2.Append(il2.Create(OpCodes.Call, mLog));
                // === skill 表遍历（打印 iCfgID + 名字）===
                {
                    TypeDefinition sdb = null;
                    if (gdm2 != null) foreach (var n in gdm2.NestedTypes) if (n.Name == "skillDatabin") sdb = n;
                    MethodReference mSCnt = null, mSGet = null;
                    if (sdb != null) {
                        foreach (var m in sdb.Methods) {
                            if (m.Name == "Count") mSCnt = Mod.ImportReference(m);
                            else if (m.Name == "GetByIndex") mSGet = Mod.ImportReference(m);
                        }
                    }
                    var tSkill = Fp("ResData.ResSkillCfgInfo");
                    var skillTd = FpA.MainModule.Types.FirstOrDefault(x => x.FullName == "ResData.ResSkillCfgInfo");
                    FieldReference fSid = null, fSname = null, fScd = null;
                    if (skillTd != null) foreach (var f in skillTd.Fields) {
                        if (f.Name == "iCfgID") fSid = Mod.ImportReference(f);
                        else if (f.Name == "strIdSkillName") fSname = Mod.ImportReference(f);
                        else if (f.Name == "iCoolDown") fScd = Mod.ImportReference(f);
                    }
                    Console.WriteLine("V12a skill refs: gdm2=" + (gdm2!=null) + " sdb=" + (sdb!=null) + " cnt=" + (mSCnt!=null)
                        + " get=" + (mSGet!=null) + " sid=" + (fSid!=null) + " sname=" + (fSname!=null)
                        + " scd=" + (fScd!=null) + " skillTd=" + (skillTd!=null));
                    // === V12e: 数值加强 + 技能CD压缩（走原生 DT_* 直通）===
                    {
                        MethodReference mDtCnt2 = null, mDtGet2 = null, mDtUpd2 = null, mHeroFind2 = null;
                        var tDtF2 = Mod.Types.FirstOrDefault(x => x.FullName == "ResData._DatabinTableFuncs");
                        if (tDtF2 != null) foreach (var m in tDtF2.Methods) {
                            if (m.Name == "DT_Count") mDtCnt2 = Mod.ImportReference(m);
                            else if (m.Name == "DT_GetByIndex") mDtGet2 = Mod.ImportReference(m);
                            else if (m.Name == "DT_UpdateData") mDtUpd2 = Mod.ImportReference(m);
                        }
                        if (hdb != null) foreach (var m in hdb.Methods) if (m.Name == "FindByKey") mHeroFind2 = Mod.ImportReference(m);
                        FieldReference gHP=null, gATT=null, gDEF=null, gRES=null, gSPD=null, gASPD=null, gCRIT=null;
                        if (heroTd != null) foreach (var f in heroTd.Fields) {
                            if (f.Name=="iBaseHP") gHP=Mod.ImportReference(f);
                            else if (f.Name=="iBaseATT") gATT=Mod.ImportReference(f);
                            else if (f.Name=="iBaseDEF") gDEF=Mod.ImportReference(f);
                            else if (f.Name=="iBaseRES") gRES=Mod.ImportReference(f);
                            else if (f.Name=="iBaseSpeed") gSPD=Mod.ImportReference(f);
                            else if (f.Name=="iBaseAtkSpd") gASPD=Mod.ImportReference(f);
                            else if (f.Name=="iCritRate") gCRIT=Mod.ImportReference(f);
                        }
                        Console.WriteLine("V12e refs cnt=" + (mDtCnt2!=null) + " get=" + (mDtGet2!=null) + " upd=" + (mDtUpd2!=null)
                            + " herofind=" + (mHeroFind2!=null) + " HP=" + (gHP!=null));
                        if (mDtCnt2!=null && mDtGet2!=null && mDtUpd2!=null && mHeroFind2!=null && gHP!=null) {
                            // ---- ① hero 数值加强 ----
                            var vHc2 = new VariableDefinition(tHero);
                            mHDRun.Body.Variables.Add(vHc2);
                            il2.Append(il2.Create(OpCodes.Ldloca, vHc2));
                            il2.Append(il2.Create(OpCodes.Ldc_I4, 125));
                            il2.Append(il2.Create(OpCodes.Call, mHeroFind2));
                            il2.Append(il2.Create(OpCodes.Pop));
                            // 改字段（放大）
                            Action<FieldReference,int> setF = (fr,val) => {
                                if (fr == null) return;
                                il2.Append(il2.Create(OpCodes.Ldloca, vHc2));
                                il2.Append(il2.Create(OpCodes.Ldc_I4, val));
                                il2.Append(il2.Create(OpCodes.Stfld, fr));
                            };
                            setF(gHP, 30000);       // 血量 2637 → 30000
                            setF(gATT, 2000);       // 攻击 152 → 2000
                            setF(gDEF, 800);        // 防御 86 → 800
                            setF(gRES, 800);        // 法抗 50 → 800
                            setF(gASPD, 200);       // 攻速 +200%
                            setF(gCRIT, 1000);      // 暴击 10%
                            // DT_UpdateData(14, 125, &vHc2)
                            il2.Append(il2.Create(OpCodes.Ldc_I4, 14));
                            il2.Append(il2.Create(OpCodes.Ldc_I4, 125));
                            il2.Append(il2.Create(OpCodes.Conv_I8));
                            il2.Append(il2.Create(OpCodes.Ldloca, vHc2));
                            il2.Append(il2.Create(OpCodes.Conv_U));
                            il2.Append(il2.Create(OpCodes.Call, mDtUpd2));
                            il2.Append(il2.Create(OpCodes.Ldstr, "V12e:HERO_ENHANCED"));
                            il2.Append(il2.Create(OpCodes.Call, mLog));
                            // ---- ② 读 astSkill（native 指针 + 偏移）----
                            MethodReference mDtFind2 = null;
                            if (tDtF2 != null) foreach (var m in tDtF2.Methods) if (m.Name == "DT_FindByKey") mDtFind2 = Mod.ImportReference(m);
                            if (mDtFind2 != null) {
                                var vPtr = new VariableDefinition(Mod.TypeSystem.IntPtr);
                                mHDRun.Body.Variables.Add(vPtr);
                                il2.Append(il2.Create(OpCodes.Ldc_I4, 14));
                                il2.Append(il2.Create(OpCodes.Ldc_I4, 125));
                                il2.Append(il2.Create(OpCodes.Conv_I8));
                                il2.Append(il2.Create(OpCodes.Call, mDtFind2));
                                il2.Append(il2.Create(OpCodes.Conv_I));
                                il2.Append(il2.Create(OpCodes.Stloc, vPtr));
                                for (int k = 0; k < 6; k++) {
                                    il2.Append(il2.Create(OpCodes.Ldstr, "YG:ASTSK" + k + "="));
                                    il2.Append(il2.Create(OpCodes.Ldloc, vPtr));
                                    il2.Append(il2.Create(OpCodes.Ldc_I4, 168 + k * 4));
                                    il2.Append(il2.Create(OpCodes.Add));
                                    il2.Append(il2.Create(OpCodes.Ldind_I4));
                                    il2.Append(il2.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                                    il2.Append(il2.Create(OpCodes.Call, concat));
                                    il2.Append(il2.Create(OpCodes.Call, mLog));
                                }
                            }
                            il2.Append(il2.Create(OpCodes.Ldstr, "V12e:DONE"));
                            il2.Append(il2.Create(OpCodes.Call, mLog));
                            // ---- ③ V12f: 元歌技能 CD 压到 3s（skillDatabin=17, iCoolDown@152）----
                            MethodReference mSkFind = null;
                            if (sdb != null) foreach (var m in sdb.Methods) if (m.Name == "FindByKey") mSkFind = Mod.ImportReference(m);
                            FieldReference fSkCd = null;
                            if (skillTd != null) foreach (var f in skillTd.Fields) if (f.Name == "iCoolDown") fSkCd = Mod.ImportReference(f);
                            Console.WriteLine("V12f skfind=" + (mSkFind!=null) + " cd=" + (fSkCd!=null));
                            if (mSkFind != null && fSkCd != null) {
                                var vSc2 = new VariableDefinition(tSkill);
                                mHDRun.Body.Variables.Add(vSc2);
                                foreach (var SID in new[] { 12500, 12501, 12502, 12503, 12510, 12511, 12512, 12513, 12520, 12521, 12522, 12523, 12530, 12531, 12532, 12533 }) {
                                    var skMiss = il2.Create(OpCodes.Nop);
                                    il2.Append(il2.Create(OpCodes.Ldloca, vSc2));
                                    il2.Append(il2.Create(OpCodes.Ldc_I4, SID));
                                    il2.Append(il2.Create(OpCodes.Call, mSkFind));
                                    il2.Append(il2.Create(OpCodes.Brfalse, skMiss));
                                    il2.Append(il2.Create(OpCodes.Ldloca, vSc2));
                                    il2.Append(il2.Create(OpCodes.Ldc_I4, 3000));
                                    il2.Append(il2.Create(OpCodes.Stfld, fSkCd));
                                    il2.Append(il2.Create(OpCodes.Ldc_I4, 17));
                                    il2.Append(il2.Create(OpCodes.Ldc_I4, SID));
                                    il2.Append(il2.Create(OpCodes.Conv_I8));
                                    il2.Append(il2.Create(OpCodes.Ldloca, vSc2));
                                    il2.Append(il2.Create(OpCodes.Conv_U));
                                    il2.Append(il2.Create(OpCodes.Call, mDtUpd2));
                                    il2.Append(il2.Create(OpCodes.Ldstr, "V12f:CDSET:" + SID));
                                    il2.Append(il2.Create(OpCodes.Call, mLog));
                                    il2.Append(skMiss);
                                }
                                il2.Append(il2.Create(OpCodes.Ldstr, "V12f:DONE"));
                                il2.Append(il2.Create(OpCodes.Call, mLog));
                            }
                        }
                    }
                    if (mSCnt != null && mSGet != null && fSid != null && fSname != null) {
                        var vSc = new VariableDefinition(tSkill);
                        var vSI = new VariableDefinition(Mod.TypeSystem.Int32);
                        var vSN = new VariableDefinition(Mod.TypeSystem.Int32);
                        mHDRun.Body.Variables.Add(vSc); mHDRun.Body.Variables.Add(vSI); mHDRun.Body.Variables.Add(vSN);
                        il2.Append(il2.Create(OpCodes.Call, mSCnt));
                        il2.Append(il2.Create(OpCodes.Stloc, vSN));
                        il2.Append(il2.Create(OpCodes.Ldc_I4_0));
                        il2.Append(il2.Create(OpCodes.Stloc, vSI));
                        var lSTop = il2.Create(OpCodes.Nop);
                        var lSEnd = il2.Create(OpCodes.Nop);
                        il2.Append(il2.Create(OpCodes.Br, lSTop));
                        il2.Append(lSTop);
                        il2.Append(il2.Create(OpCodes.Ldloc, vSI));
                        il2.Append(il2.Create(OpCodes.Ldloc, vSN));
                        il2.Append(il2.Create(OpCodes.Bge, lSEnd));
                        il2.Append(il2.Create(OpCodes.Ldloc, vSI));
                        il2.Append(il2.Create(OpCodes.Call, mSGet));
                        il2.Append(il2.Create(OpCodes.Stloc, vSc));
                        il2.Append(il2.Create(OpCodes.Ldstr, "SKILL:"));
                        il2.Append(il2.Create(OpCodes.Ldloc, vSc));
                        il2.Append(il2.Create(OpCodes.Ldfld, fSid));
                        il2.Append(il2.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                        il2.Append(il2.Create(OpCodes.Call, concat));
                        il2.Append(il2.Create(OpCodes.Ldstr, ":"));
                        il2.Append(il2.Create(OpCodes.Call, concat));
                        il2.Append(il2.Create(OpCodes.Ldloc, vSc));
                        il2.Append(il2.Create(OpCodes.Ldfld, fSname));
                        il2.Append(il2.Create(OpCodes.Call, mSid2Str));
                        il2.Append(il2.Create(OpCodes.Call, concat));
                        if (fScd != null) {
                            il2.Append(il2.Create(OpCodes.Ldstr, ":CD="));
                            il2.Append(il2.Create(OpCodes.Call, concat));
                            il2.Append(il2.Create(OpCodes.Ldloc, vSc));
                            il2.Append(il2.Create(OpCodes.Ldfld, fScd));
                            il2.Append(il2.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                            il2.Append(il2.Create(OpCodes.Call, concat));
                        }
                        il2.Append(il2.Create(OpCodes.Call, mLog));
                        il2.Append(il2.Create(OpCodes.Ldloc, vSI));
                        il2.Append(il2.Create(OpCodes.Ldc_I4_1));
                        il2.Append(il2.Create(OpCodes.Add));
                        il2.Append(il2.Create(OpCodes.Stloc, vSI));
                        il2.Append(il2.Create(OpCodes.Br, lSTop));
                        il2.Append(lSEnd);
                        il2.Append(il2.Create(OpCodes.Ldstr, "SKILLDUMP:end"));
                        il2.Append(il2.Create(OpCodes.Call, mLog));
                    }
                }
                il2.Append(il2.Create(OpCodes.Ret));
                mHDRun.Body.MaxStackSize = 16;
                // ★ V19: 撤除首调挂载 —— 这个块里同时住着 V12e(英雄数值，含 iBaseAtkSpd=200)
                //   与 V12f(技能CD=3000)。实测它们每次开局都再写一遍，把 V14/V18 的
                //   "攻速复原为 0" 和 "分档CD(1s/2s)" 覆盖掉 —— 这就是攻速变慢与傀儡CD没变的真凶。
                //   现在英雄数值/技能CD 全部由 V14(WzFix.Apply) 独家负责，并自带 DT_UpdateData 落盘。
                Console.WriteLine("V19 WzHeroDump/V12e/V12f hook REMOVED (V14 is single source of truth)");
            }
        }
        {
            Func<string, MethodReference> steal = (fn) => {
                foreach (var tt in Mod.Types) {
                    foreach (var mm in tt.Methods) {
                        if (!mm.HasBody) continue;
                        foreach (var ii in mm.Body.Instructions)
                            if (ii.Operand is MethodReference mr && mr.FullName == fn) return mr;
                    }
                }
                return null;
            };
            mReadAllText = steal("System.String System.IO.File::ReadAllText(System.String)");
            mSplit       = steal("System.String[] System.String::Split(System.Char[])");
            mIndexOfS    = steal("System.Int32 System.String::IndexOf(System.String)");
            mSubstr2     = steal("System.String System.String::Substring(System.Int32,System.Int32)");
            mFsCtor      = steal("System.Void System.IO.FileStream::.ctor(System.String,System.IO.FileMode,System.IO.FileAccess)");
            mSeek        = steal("System.Int64 System.IO.Stream::Seek(System.Int64,System.IO.SeekOrigin)");
            mRead        = steal("System.Int32 System.IO.Stream::Read(System.Byte[],System.Int32,System.Int32)");
            mWrite       = steal("System.Void System.IO.Stream::Write(System.Byte[],System.Int32,System.Int32)");
            mClose       = steal("System.Void System.IO.Stream::Close()");
            mTryParseU32 = steal("System.Boolean System.UInt32::TryParse(System.String,System.Globalization.NumberStyles,System.IFormatProvider,System.UInt32&)");
            mToInt32     = steal("System.Int32 System.BitConverter::ToInt32(System.Byte[],System.Int32)");
            mGetLen      = steal("System.Int32 System.Array::get_Length()");
            mMarshalCopy = steal("System.Void System.Runtime.InteropServices.Marshal::Copy(System.IntPtr,System.Byte[],System.Int32,System.Int32)");
            mWriteI32    = steal("System.Void System.Runtime.InteropServices.Marshal::WriteInt32(System.IntPtr,System.Int32)");
            mPtrFromI64  = steal("System.IntPtr System.IntPtr::op_Explicit(System.Int64)");
            Console.WriteLine("V10 refs readall=" + (mReadAllText!=null) + " split=" + (mSplit!=null) + " idx=" + (mIndexOfS!=null)
                + " sub=" + (mSubstr2!=null) + " fsctor=" + (mFsCtor!=null) + " seek=" + (mSeek!=null) + " read=" + (mRead!=null)
                + " write=" + (mWrite!=null) + " close=" + (mClose!=null) + " tryp=" + (mTryParseU32!=null)
                + " toint=" + (mToInt32!=null) + " getlen=" + (mGetLen!=null));
            if (mReadAllText==null||mSplit==null||mIndexOfS==null||mSubstr2==null||mTryParseU32==null
                ||mToInt32==null||mMarshalCopy==null||mWriteI32==null||mPtrFromI64==null)
                throw new Exception("v10-ref-miss");

            var tMem = new TypeDefinition("Assets.Scripts.GameLogic", "WzMemFix",
                Mono.Cecil.TypeAttributes.Public | Mono.Cecil.TypeAttributes.Sealed | Mono.Cecil.TypeAttributes.Abstract | Mono.Cecil.TypeAttributes.Class,
                Mod.TypeSystem.Object);
            Mod.Types.Add(tMem);
            var fMemDone = new FieldDefinition("done", FieldAttributes.Public | FieldAttributes.Static, Mod.TypeSystem.Boolean);
            tMem.Fields.Add(fMemDone);
            var rMemDone = Mod.ImportReference(fMemDone);
            var mMemRun = new MethodDefinition("Run", Mono.Cecil.MethodAttributes.Public | Mono.Cecil.MethodAttributes.Static, Mod.TypeSystem.Void);
            tMem.Methods.Add(mMemRun);
            mMemRun.Body.InitLocals = true;
            var il = mMemRun.Body.GetILProcessor();

            TypeReference tStr10 = Mod.TypeSystem.String;
            TypeReference tStrArr = new ArrayType(tStr10);
            TypeReference tChArr = new ArrayType(Mod.TypeSystem.Char);
            TypeReference tByteArr = new ArrayType(Mod.TypeSystem.Byte);
            TypeReference tU32 = Mod.TypeSystem.UInt32;
            TypeReference tI64 = Mod.TypeSystem.Int64;
            TypeReference tI32 = Mod.TypeSystem.Int32;
            TypeReference tFs = mFsCtor.DeclaringType;
            TypeReference tEx = Mod.ImportReference(Msc("System.Exception"));

            var vMaps = new VariableDefinition(tStr);
            var vChars = new VariableDefinition(tChArr);
            var vLines = new VariableDefinition(tStrArr);
            var vFs = new VariableDefinition(tFs);
            var vBuf = new VariableDefinition(tByteArr);
            var vWr = new VariableDefinition(tByteArr);
            var vI = new VariableDefinition(tI32);
            var vHit = new VariableDefinition(tI32);
            var vLine = new VariableDefinition(tStr);
            var vTmp = new VariableDefinition(tStr);
            var vU = new VariableDefinition(tU32);
            var vSegS = new VariableDefinition(tI64);
            var vSegE = new VariableDefinition(tI64);
            var vOff = new VariableDefinition(tI64);
            var vN = new VariableDefinition(tI32);
            var vLen = new VariableDefinition(tI32);
            var vJ = new VariableDefinition(tI32);
            var vVal = new VariableDefinition(tI32);
            var vDur = new VariableDefinition(tI32);
            var vEx = new VariableDefinition(tEx);
            foreach (var vv in new[]{ vMaps,vChars,vLines,vFs,vBuf,vWr,vI,vHit,vLine,vTmp,vU,vSegS,vSegE,vOff,vN,vLen,vJ,vVal,vDur,vEx })
                mMemRun.Body.Variables.Add(vv);

            var lRet = il.Create(OpCodes.Ret);
            var lDone = il.Create(OpCodes.Nop);

            // --- Block A: maps + buffers ---
            il.Append(il.Create(OpCodes.Ldstr, "/proc/self/maps"));
            il.Append(il.Create(OpCodes.Call, mReadAllText));
            il.Append(il.Create(OpCodes.Stloc, vMaps));
            il.Append(il.Create(OpCodes.Ldstr, "V10MEM:a1"));
            il.Append(il.Create(OpCodes.Call, mLog));
            il.Append(il.Create(OpCodes.Ldc_I4_1));
            il.Append(il.Create(OpCodes.Newarr, Mod.TypeSystem.Char));
            il.Append(il.Create(OpCodes.Stloc, vChars));
            il.Append(il.Create(OpCodes.Ldloc, vChars));
            il.Append(il.Create(OpCodes.Ldc_I4_0));
            il.Append(il.Create(OpCodes.Ldc_I4_S, (sbyte)10));
            il.Append(il.Create(OpCodes.Stelem_I2));
            il.Append(il.Create(OpCodes.Ldloc, vMaps));
            il.Append(il.Create(OpCodes.Ldloc, vChars));
            il.Append(il.Create(OpCodes.Callvirt, mSplit));
            il.Append(il.Create(OpCodes.Stloc, vLines));
            il.Append(il.Create(OpCodes.Ldstr, "V10MEM:a2"));
            il.Append(il.Create(OpCodes.Call, mLog));
            il.Append(il.Create(OpCodes.Ldc_I4, 0x1800000));
            il.Append(il.Create(OpCodes.Newarr, Mod.TypeSystem.Byte));
            il.Append(il.Create(OpCodes.Stloc, vBuf));
            il.Append(il.Create(OpCodes.Ldc_I4_0));
            il.Append(il.Create(OpCodes.Stloc, vI));
            il.Append(il.Create(OpCodes.Ldc_I4_0));
            il.Append(il.Create(OpCodes.Stloc, vHit));

            // --- Block B: line loop ---
            var lLineTop = il.Create(OpCodes.Nop);
            il.Append(il.Create(OpCodes.Br, lLineTop));
            // LINE_TOP:
            il.Append(lLineTop);
            il.Append(il.Create(OpCodes.Ldloc, vI));
            il.Append(il.Create(OpCodes.Ldloc, vLines));
            il.Append(il.Create(OpCodes.Ldlen));
            il.Append(il.Create(OpCodes.Conv_I4));
            il.Append(il.Create(OpCodes.Bge, lDone));
            il.Append(il.Create(OpCodes.Ldloc, vLines));
            il.Append(il.Create(OpCodes.Ldloc, vI));
            il.Append(il.Create(OpCodes.Ldelem_Ref));
            il.Append(il.Create(OpCodes.Stloc, vLine));
            il.Append(il.Create(OpCodes.Ldloc, vI));
            il.Append(il.Create(OpCodes.Ldc_I4_1));
            il.Append(il.Create(OpCodes.Add));
            il.Append(il.Create(OpCodes.Stloc, vI));
            // 过滤 scudo:secondary
            il.Append(il.Create(OpCodes.Ldloc, vLine));
            il.Append(il.Create(OpCodes.Ldstr, "scudo:secondary"));
            il.Append(il.Create(OpCodes.Callvirt, mIndexOfS));
            il.Append(il.Create(OpCodes.Ldc_I4_0));
            il.Append(il.Create(OpCodes.Blt, lLineTop));
            // 过滤 rw
            il.Append(il.Create(OpCodes.Ldloc, vLine));
            il.Append(il.Create(OpCodes.Ldstr, "rw"));
            il.Append(il.Create(OpCodes.Callvirt, mIndexOfS));
            il.Append(il.Create(OpCodes.Ldc_I4_0));
            il.Append(il.Create(OpCodes.Blt, lLineTop));
            // start hex
            il.Append(il.Create(OpCodes.Ldloc, vLine));
            il.Append(il.Create(OpCodes.Ldc_I4_0));
            il.Append(il.Create(OpCodes.Ldc_I4_8));
            il.Append(il.Create(OpCodes.Callvirt, mSubstr2));
            il.Append(il.Create(OpCodes.Stloc, vTmp));
            il.Append(il.Create(OpCodes.Ldloc, vTmp));
            il.Append(il.Create(OpCodes.Ldc_I4, 515));
            il.Append(il.Create(OpCodes.Ldnull));
            il.Append(il.Create(OpCodes.Ldloca, vU));
            il.Append(il.Create(OpCodes.Call, mTryParseU32));
            il.Append(il.Create(OpCodes.Brfalse, lLineTop));
            il.Append(il.Create(OpCodes.Ldloc, vU));
            il.Append(il.Create(OpCodes.Conv_U8));
            il.Append(il.Create(OpCodes.Conv_I8));
            il.Append(il.Create(OpCodes.Stloc, vSegS));
            // end hex
            il.Append(il.Create(OpCodes.Ldloc, vLine));
            il.Append(il.Create(OpCodes.Ldc_I4, 9));
            il.Append(il.Create(OpCodes.Ldc_I4_8));
            il.Append(il.Create(OpCodes.Callvirt, mSubstr2));
            il.Append(il.Create(OpCodes.Stloc, vTmp));
            il.Append(il.Create(OpCodes.Ldloc, vTmp));
            il.Append(il.Create(OpCodes.Ldc_I4, 515));
            il.Append(il.Create(OpCodes.Ldnull));
            il.Append(il.Create(OpCodes.Ldloca, vU));
            il.Append(il.Create(OpCodes.Call, mTryParseU32));
            il.Append(il.Create(OpCodes.Brfalse, lLineTop));
            il.Append(il.Create(OpCodes.Ldloc, vU));
            il.Append(il.Create(OpCodes.Conv_U8));
            il.Append(il.Create(OpCodes.Conv_I8));
            il.Append(il.Create(OpCodes.Stloc, vSegE));
            // 段上限 24MB（避免长扫阻塞主线程）
            il.Append(il.Create(OpCodes.Ldloc, vSegE));
            il.Append(il.Create(OpCodes.Ldloc, vSegS));
            il.Append(il.Create(OpCodes.Sub));
            il.Append(il.Create(OpCodes.Ldc_I4, 0x1800000));
            il.Append(il.Create(OpCodes.Conv_I8));
            il.Append(il.Create(OpCodes.Bgt, lLineTop));

            // 段大小下限（>0）
            il.Append(il.Create(OpCodes.Ldloc, vSegE));
            il.Append(il.Create(OpCodes.Ldloc, vSegS));
            il.Append(il.Create(OpCodes.Ble, lLineTop));

            // --- Block C: 对 3 个 ID 生成扫描 ---
            Action<int,int> emitScan = (ID, EXP) => {
                var lScanDone = il.Create(OpCodes.Nop);
                var lJTop = il.Create(OpCodes.Nop);
                var lJDone = il.Create(OpCodes.Nop);
                var lJNext = il.Create(OpCodes.Nop);
                var lLenOk = il.Create(OpCodes.Nop);
                // vLen = (int)(segE - segS)
                il.Append(il.Create(OpCodes.Ldloc, vSegE));
                il.Append(il.Create(OpCodes.Ldloc, vSegS));
                il.Append(il.Create(OpCodes.Sub));
                il.Append(il.Create(OpCodes.Conv_I4));
                il.Append(il.Create(OpCodes.Stloc, vLen));
                // if (vLen > bufLen) vLen = bufLen
                il.Append(il.Create(OpCodes.Ldloc, vLen));
                il.Append(il.Create(OpCodes.Ldc_I4, 0x1800000));
                il.Append(il.Create(OpCodes.Ble, lLenOk));
                il.Append(il.Create(OpCodes.Ldc_I4, 0x1800000));
                il.Append(il.Create(OpCodes.Stloc, vLen));
                il.Append(lLenOk);
                // if (vLen <= 0) done
                il.Append(il.Create(OpCodes.Ldloc, vLen));
                il.Append(il.Create(OpCodes.Ldc_I4_0));
                il.Append(il.Create(OpCodes.Ble, lScanDone));
                // Marshal.Copy((IntPtr)segS, buf, 0, vLen)
                il.Append(il.Create(OpCodes.Ldloc, vSegS));
                il.Append(il.Create(OpCodes.Call, mPtrFromI64));
                il.Append(il.Create(OpCodes.Ldloc, vBuf));
                il.Append(il.Create(OpCodes.Ldc_I4_0));
                il.Append(il.Create(OpCodes.Ldloc, vLen));
                il.Append(il.Create(OpCodes.Call, mMarshalCopy));
                il.Append(il.Create(OpCodes.Ldstr, "V10MEM:sc"));
                il.Append(il.Create(OpCodes.Call, mLog));
                // j = 0
                il.Append(il.Create(OpCodes.Ldc_I4_0));
                il.Append(il.Create(OpCodes.Stloc, vJ));
                il.Append(il.Create(OpCodes.Br, lJTop));
                il.Append(lJTop);
                // if (j+124 > len) done
                il.Append(il.Create(OpCodes.Ldloc, vJ));
                il.Append(il.Create(OpCodes.Ldc_I4, 124));
                il.Append(il.Create(OpCodes.Add));
                il.Append(il.Create(OpCodes.Ldloc, vLen));
                il.Append(il.Create(OpCodes.Bgt, lJDone));
                // val
                il.Append(il.Create(OpCodes.Ldloc, vBuf));
                il.Append(il.Create(OpCodes.Ldloc, vJ));
                il.Append(il.Create(OpCodes.Call, mToInt32));
                il.Append(il.Create(OpCodes.Stloc, vVal));
                il.Append(il.Create(OpCodes.Ldloc, vVal));
                il.Append(il.Create(OpCodes.Ldc_I4, ID));
                il.Append(il.Create(OpCodes.Bne_Un, lJNext));
                // dur
                il.Append(il.Create(OpCodes.Ldloc, vBuf));
                il.Append(il.Create(OpCodes.Ldloc, vJ));
                il.Append(il.Create(OpCodes.Ldc_I4, 120));
                il.Append(il.Create(OpCodes.Add));
                il.Append(il.Create(OpCodes.Call, mToInt32));
                il.Append(il.Create(OpCodes.Stloc, vDur));
                il.Append(il.Create(OpCodes.Ldloc, vDur));
                il.Append(il.Create(OpCodes.Ldc_I4, EXP));
                il.Append(il.Create(OpCodes.Bne_Un, lJNext));
                // Marshal.WriteInt32((IntPtr)(segS + (long)j + 120), 1)
                il.Append(il.Create(OpCodes.Ldloc, vSegS));
                il.Append(il.Create(OpCodes.Ldloc, vJ));
                il.Append(il.Create(OpCodes.Conv_I8));
                il.Append(il.Create(OpCodes.Add));
                il.Append(il.Create(OpCodes.Ldc_I4, 120));
                il.Append(il.Create(OpCodes.Conv_I8));
                il.Append(il.Create(OpCodes.Add));
                il.Append(il.Create(OpCodes.Call, mPtrFromI64));
                il.Append(il.Create(OpCodes.Ldc_I4_1));
                il.Append(il.Create(OpCodes.Call, mWriteI32));
                il.Append(il.Create(OpCodes.Ldloc, vHit));
                il.Append(il.Create(OpCodes.Ldc_I4_1));
                il.Append(il.Create(OpCodes.Add));
                il.Append(il.Create(OpCodes.Stloc, vHit));
                // J_NEXT
                il.Append(lJNext);
                il.Append(il.Create(OpCodes.Ldloc, vJ));
                il.Append(il.Create(OpCodes.Ldc_I4_4));
                il.Append(il.Create(OpCodes.Add));
                il.Append(il.Create(OpCodes.Stloc, vJ));
                il.Append(il.Create(OpCodes.Br, lJTop));
                il.Append(lJDone);
                il.Append(lScanDone);
            };
            emitScan(225002, 25000);
            emitScan(225001, 2000);
            emitScan(225003, 2000);
            // 段计数日志（调试用，验证解析正确性）
            il.Append(il.Create(OpCodes.Ldstr, "V10MEM:scan-calls="));
            il.Append(il.Create(OpCodes.Ldloc, vHit));
            il.Append(il.Create(OpCodes.Box, Mod.TypeSystem.Int32));
            il.Append(il.Create(OpCodes.Call, concat));
            il.Append(il.Create(OpCodes.Call, mLog));

            il.Append(il.Create(OpCodes.Br, lLineTop));

            // --- Done: log ---
            il.Append(lDone);
            il.Append(il.Create(OpCodes.Ldstr, "V10MEM:hits="));
            il.Append(il.Create(OpCodes.Ldloc, vHit));
            il.Append(il.Create(OpCodes.Box, Mod.TypeSystem.Int32));
            il.Append(il.Create(OpCodes.Call, concat));
            il.Append(il.Create(OpCodes.Call, mLog));
            il.Append(lRet);
            // catch
            var eh10 = new ExceptionHandler(ExceptionHandlerType.Catch);
            eh10.TryStart = mMemRun.Body.Instructions[0];
            eh10.TryEnd = lRet;
            var stEx10 = il.Create(OpCodes.Stloc, vEx);
            var ldTag10 = il.Create(OpCodes.Ldstr, "V10MEM:ERR:");
            var ldEx10 = il.Create(OpCodes.Ldloc, vEx);
            var catEx10 = il.Create(OpCodes.Call, concat);
            var logEx10 = il.Create(OpCodes.Call, mLog);
            var retH10 = il.Create(OpCodes.Ret);
            eh10.HandlerStart = stEx10;
            eh10.HandlerEnd = retH10;
            eh10.CatchType = tEx;
            il.Append(stEx10);
            il.Append(ldTag10);
            il.Append(ldEx10);
            il.Append(catEx10);
            il.Append(logEx10);
            il.Append(retH10);
            mMemRun.Body.ExceptionHandlers.Add(eh10);
            mMemRun.Body.MaxStackSize = 16;
            Console.WriteLine("V10 WzMemFix.Run built");

            // V10 已证伪（游戏 mscorlib 裁剪版，System.IO.File 注入即 native 崩）→ 不挂载
            Console.WriteLine("V10 disabled (proven unusable: mscorlib File IO)");
        }
        if (withDump && dm != null) {
            var tDumpRef = Main("Assets.Scripts.GameLogic.WzTableDump");
            var fDone = Mod.ImportReference(tDumpRef.Fields.First(f => f.Name == "done"));
            var mRun = Mod.ImportReference(dm);
            abi.InsertBefore(first, abi.Create(OpCodes.Ldsfld, fDone));
            var skipDump = abi.Create(OpCodes.Nop);
            abi.InsertBefore(first, abi.Create(OpCodes.Brtrue, skipDump));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4_1));
            abi.InsertBefore(first, abi.Create(OpCodes.Stsfld, fDone));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldstr, "DUMP:run"));
            abi.InsertBefore(first, abi.Create(OpCodes.Call, mLog));
            abi.InsertBefore(first, abi.Create(OpCodes.Call, mRun));
            abi.InsertBefore(first, skipDump);
            Console.WriteLine("P13b auto-dump hooked on AddBuff first-call");
        }
        // V8o: 单ID摘除225002（25s禁锁）——C#判可放但native锁状态，直禁该buff进（小步验证，不动其他ID）
        // V8p: 摘除同时抢真神帧（摧毁同秒顶晕/锁，门已撤，保证早局也发）
        // V8r: 摘除已证伪（native另计时，RMV仍在），改只记STRIP不再Ret，放行给后段BuffConsume删锁
        {
            var skipStrip = abi.Create(OpCodes.Nop);
            abi.InsertBefore(first, abi.Create(OpCodes.Ldarg_1));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4, 225002));
            abi.InsertBefore(first, abi.Create(OpCodes.Bne_Un, skipStrip));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldstr, "STRIP:225002"));
            abi.InsertBefore(first, abi.Create(OpCodes.Call, mLog));
            abi.InsertBefore(first, abi.Create(ocCreateGod, mCreateGod));
            abi.InsertBefore(first, abi.Create(ocSendGod, mSendGod));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldstr, "GOD:auto:225002"));
            abi.InsertBefore(first, abi.Create(OpCodes.Call, mLog));
            abi.InsertBefore(first, skipStrip);
            Console.WriteLine("V8o strip-log only (no ret) + V8p god");
        }
        // V8k归属：actorPtr句柄全偷原生（ab自体+UpAndClick），日志带:actor
        FieldReference rAP = null;
        MethodReference rH3 = null, rO3 = null;
        OpCode ocH3 = OpCodes.Call, ocO3 = OpCodes.Callvirt;
        foreach (var ii in ab.Body.Instructions)
            if (ii.Operand is FieldReference fr && fr.Name == "actorPtr" && rAP == null) { rAP = (FieldReference)ii.Operand; break; }
        {
            var mUp3 = Mod.Types.First(t => t.FullName == "Assets.Scripts.GameSystem.CSkillButtonManager").Methods.First(m => m.Name == "JointSkillButtonUpAndClick");
            foreach (var ii in mUp3.Body.Instructions) {
                if (ii.Operand is MethodReference mr) {
                    if (mr.Name == "get_handle" && rH3 == null) { rH3 = (MethodReference)ii.Operand; ocH3 = ii.OpCode; }
                    else if (mr.Name == "get_objID" && rO3 == null) { rO3 = (MethodReference)ii.Operand; ocO3 = ii.OpCode; }
                }
            }
        }
        if (rAP == null || rH3 == null || rO3 == null) throw new Exception("actor-ref-miss");
        Console.WriteLine("actor-refs stolen");
        abi.InsertBefore(first, abi.Create(OpCodes.Ldstr, "BUFF:"));
        abi.InsertBefore(first, abi.Create(OpCodes.Ldarg_1));
        abi.InsertBefore(first, abi.Create(OpCodes.Box, Mod.TypeSystem.UInt32));
        abi.InsertBefore(first, abi.Create(OpCodes.Call, concat));
        abi.InsertBefore(first, abi.Create(OpCodes.Ldstr, ":"));
        abi.InsertBefore(first, abi.Create(OpCodes.Ldarg_0));
        abi.InsertBefore(first, abi.Create(OpCodes.Ldflda, rAP));
        abi.InsertBefore(first, abi.Create(ocH3, rH3));
        abi.InsertBefore(first, abi.Create(ocO3, rO3));
        abi.InsertBefore(first, abi.Create(OpCodes.Box, Mod.TypeSystem.UInt32));
        abi.InsertBefore(first, abi.Create(OpCodes.Call, concat));
        abi.InsertBefore(first, abi.Create(OpCodes.Call, concat));
        abi.InsertBefore(first, abi.Create(OpCodes.Call, mLog));
        // V5b RMV: RemoveBuff只读日志（死亡侧序列，不动语义）
        var rb = Main("Assets.Scripts.GameLogic.BuffLinkerComponent").Methods.First(m => m.Name == "RemoveBuff");
        var rbi = rb.Body.GetILProcessor();
        var rfirst = rb.Body.Instructions[0];
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Ldstr, "RMV:"));
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Ldarg_1));
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Box, Mod.TypeSystem.UInt32));
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Call, concat));
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Ldstr, ":"));
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Ldarg_0));
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Ldflda, rAP));
        rbi.InsertBefore(rfirst, rbi.Create(ocH3, rH3));
        rbi.InsertBefore(rfirst, rbi.Create(ocO3, rO3));
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Box, Mod.TypeSystem.UInt32));
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Call, concat));
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Call, concat));
        rbi.InsertBefore(rfirst, rbi.Create(OpCodes.Call, mLog));
        Console.WriteLine("maxstack RemoveBuff before=" + rb.Body.MaxStackSize);
        rb.Body.MaxStackSize = System.Math.Max(rb.Body.MaxStackSize, 16);
        Console.WriteLine("V5b rmv-log injected");
        // P12: 作弊引用全部从ZeroCD原生指令偷（同类同op，保证运行时可解析；自行Resolve曾致JIT崩）
        MethodReference mSend = null, mGetInst = null;
        FieldReference fHostPid = null;
        {
            var mZero = Mod.Types.First(t => t.Name == "CheatCommandBattleEntry").Methods.First(m => m.Name == "ZeroCD");
            foreach (var ii in mZero.Body.Instructions) {
                if (ii.Operand is MethodReference mr && mr.Name == "get_instance" && mGetInst == null) mGetInst = (MethodReference)ii.Operand;
                else if (ii.Operand is FieldReference fr && fr.Name == "hostPlayerID" && fHostPid == null) fHostPid = (FieldReference)ii.Operand;
                else if (ii.Operand is MethodReference mr2 && mr2.Name == "SendCommand" && mSend == null) mSend = (MethodReference)ii.Operand;
            }
        }
        Console.WriteLine("cheat-refs send=" + (mSend != null) + " inst=" + (mGetInst != null) + " pid=" + (fHostPid != null));
        if (mSend == null || mGetInst == null || fHostPid == null) throw new Exception("cheat-ref-miss");
        Console.WriteLine("resolve send=" + mSend.Resolve().FullName);
        Console.WriteLine("resolve getinst=" + mGetInst.Resolve().FullName);
        Console.WriteLine("resolve hostpid=" + fHostPid.Resolve().FullName + " : " + fHostPid.FieldType.FullName);
        // WzGate: 独立新类型计数门（P7对照法安全：不动既有类型布局）
        var tGate = new TypeDefinition("Assets.Scripts.GameLogic", "WzGate",
            Mono.Cecil.TypeAttributes.Public | Mono.Cecil.TypeAttributes.Sealed | Mono.Cecil.TypeAttributes.Abstract | Mono.Cecil.TypeAttributes.Class,
            Mod.TypeSystem.Object);
        Mod.Types.Add(tGate);
        var fTicks = new FieldDefinition("ticks", FieldAttributes.Public | FieldAttributes.Static, Mod.TypeSystem.Int32);
        tGate.Fields.Add(fTicks);
        var rTicks = Mod.ImportReference(fTicks);
        Console.WriteLine("WzGate created");
        // V8n: 摧毁排他集计数保留（诊断用，门已撤）；V8p真神帧：摧毁同秒发SwitchActorSwitchGodMode顶晕/锁
        abi.InsertBefore(first, abi.Create(OpCodes.Ldsfld, rTicks));
        abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4_1));
        abi.InsertBefore(first, abi.Create(OpCodes.Add));
        abi.InsertBefore(first, abi.Create(OpCodes.Stsfld, rTicks));
        foreach (var STUN_ID in new[] { 225001, 225003, 911274 }) {
            var skip = abi.Create(OpCodes.Nop);
            abi.InsertBefore(first, abi.Create(OpCodes.Ldarg_1));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldc_I4, STUN_ID));
            abi.InsertBefore(first, abi.Create(OpCodes.Bne_Un, skip));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldstr, "STUN-HIT:" + STUN_ID));
            abi.InsertBefore(first, abi.Create(OpCodes.Call, mLog));
            abi.InsertBefore(first, abi.Create(ocCreateGod, mCreateGod));
            abi.InsertBefore(first, abi.Create(ocSendGod, mSendGod));
            abi.InsertBefore(first, abi.Create(OpCodes.Ldstr, "GOD:auto:" + STUN_ID));
            abi.InsertBefore(first, abi.Create(OpCodes.Call, mLog));
            abi.InsertBefore(first, skip);
            Console.WriteLine("V8p stolen-god hooked id=" + STUN_ID);
        }
        // V9c: CONSUME 已移除。V8r 实测：强删buff(w/EBC_BuffConsume=11) → native 走不到"自然到期解除" → 永久卡晕。
        //      改用 V9/V9b 压 iDuration=1ms，让 buff 自然到期，native 正常解除。
        Console.WriteLine("V9c consume-removed (kept: V9 dur-shrink + V9b initslot)");
        // ===== V13: 对抗"升级后覆盖" =====
        // ① HP 上限：ValueLinkerComponent::SetActorHp 里 actorHpTotal 的赋值源 → 常量
        {
            var tVlc = Main("Assets.Scripts.GameLogic.ValueLinkerComponent");
            var mSetHp = tVlc.Methods.FirstOrDefault(m => m.Name == "SetActorHp");
            if (mSetHp != null && mSetHp.HasBody) {
                // V13b 修正：原"把 actorHpTotal 赋值源替换为常量30000"是对**所有 actor**生效的，
                //   导致小兵/野怪上限也变 30000。已撤除；血量上限改由 V14 的表改写 + V15 的补满负责。
                Console.WriteLine("V13 actorHpTotal-source patch REMOVED (was global, broke minions)");
                // 诊断: 入口打印 hp:hpTotal（保留）
                var pSet = mSetHp.Body.GetILProcessor();
                var fSet = mSetHp.Body.Instructions[0];
                pSet.InsertBefore(fSet, pSet.Create(OpCodes.Ldstr, "SETHp:"));
                pSet.InsertBefore(fSet, pSet.Create(OpCodes.Ldarg_1));
                pSet.InsertBefore(fSet, pSet.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                pSet.InsertBefore(fSet, pSet.Create(OpCodes.Call, concat));
                pSet.InsertBefore(fSet, pSet.Create(OpCodes.Ldstr, ":"));
                pSet.InsertBefore(fSet, pSet.Create(OpCodes.Call, concat));
                pSet.InsertBefore(fSet, pSet.Create(OpCodes.Ldarg_2));
                pSet.InsertBefore(fSet, pSet.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                pSet.InsertBefore(fSet, pSet.Create(OpCodes.Call, concat));
                pSet.InsertBefore(fSet, pSet.Create(OpCodes.Call, mLog));
                mSetHp.Body.MaxStackSize = System.Math.Max(mSetHp.Body.MaxStackSize, 16);
                Console.WriteLine("V13 SetActorHp log only");
            } else Console.WriteLine("V13 SetActorHp NOT FOUND");
            // ② 技能 CD：SGC::NtfSynchSkillCD 开头 ret（阻断 native CD 同步覆盖）
            var tSgc = Main("SGC");
            var mNtf = tSgc.Methods.FirstOrDefault(m => m.Name == "NtfSynchSkillCD");
            if (mNtf != null && mNtf.HasBody) {
                var p3 = mNtf.Body.GetILProcessor();
                mNtf.Body.Instructions.Clear();
                p3.Append(p3.Create(OpCodes.Ret));
                Console.WriteLine("V13 NtfSynchSkillCD -> ret (CD sync blocked)");
            } else Console.WriteLine("V13 NtfSynchSkillCD NOT FOUND");
        }

        // ===== V14: 持续原地改写 native databin（表14 英雄数值 / 表17 技能CD）=====
        // 根因: V12e/V12f 只在"首次 AddBuff"触发 —— 那时 actor 早已创建，升级重算读不到改值。
        // 触发点: SkillLinkerComponent::LateUpdate —— 其内部只对 IsHostCtrlActor(玩家本体/傀儡) 放行，
        //         天然只在玩家单位上每帧执行；节流 1/32 帧原地重写 native 表行。
        {
            var tDtF3 = Mod.Types.FirstOrDefault(x => x.FullName == "ResData._DatabinTableFuncs");
            if (tDtF3 == null) tDtF3 = FpA.MainModule.Types.FirstOrDefault(x => x.FullName == "ResData._DatabinTableFuncs");
            MethodReference vFind = null, vUpd = null, vCnt14 = null;
            if (tDtF3 != null) foreach (var m in tDtF3.Methods) {
                if (m.Name == "DT_FindByKey") vFind = Mod.ImportReference(m);
                else if (m.Name == "DT_UpdateData") vUpd = Mod.ImportReference(m);
                else if (m.Name == "DT_Count") vCnt14 = Mod.ImportReference(m);
            }
            Console.WriteLine("V14 dtfind=" + (vFind != null) + " dtupd=" + (vUpd != null));
            if (vFind == null) throw new Exception("v14-ref-miss");

            var tFix = new TypeDefinition("Assets.Scripts.GameLogic", "WzFix",
                Mono.Cecil.TypeAttributes.Public | Mono.Cecil.TypeAttributes.Sealed | Mono.Cecil.TypeAttributes.Abstract | Mono.Cecil.TypeAttributes.Class,
                Mod.TypeSystem.Object);
            Mod.Types.Add(tFix);
            var fTicksV14 = new FieldDefinition("ticks", FieldAttributes.Public | FieldAttributes.Static, Mod.TypeSystem.Int32);
            var fLogV14 = new FieldDefinition("logged", FieldAttributes.Public | FieldAttributes.Static, Mod.TypeSystem.Int32);
            var fCntV39 = new FieldDefinition("cnt14", FieldAttributes.Public | FieldAttributes.Static, Mod.TypeSystem.Int32);
            tFix.Fields.Add(fTicksV14); tFix.Fields.Add(fLogV14); tFix.Fields.Add(fCntV39);
            var rTicksV14 = Mod.ImportReference(fTicksV14);
            var rLogV14 = Mod.ImportReference(fLogV14);
            var rCntV39 = Mod.ImportReference(fCntV39);

            var mApply = new MethodDefinition("Apply",
                Mono.Cecil.MethodAttributes.Public | Mono.Cecil.MethodAttributes.Static, Mod.TypeSystem.Void);
            tFix.Methods.Add(mApply);
            mApply.Body.InitLocals = true;
            var vP = new VariableDefinition(Mod.TypeSystem.IntPtr);
            var vI = new VariableDefinition(Mod.TypeSystem.Int32);
            var vCd = new VariableDefinition(Mod.TypeSystem.Int32);
            var vN1 = new VariableDefinition(Mod.TypeSystem.Int32);
            var vN2 = new VariableDefinition(Mod.TypeSystem.Int32);
            var vQ = new VariableDefinition(Mod.TypeSystem.IntPtr);
            mApply.Body.Variables.Add(vP); mApply.Body.Variables.Add(vI); mApply.Body.Variables.Add(vCd);
            mApply.Body.Variables.Add(vN1); mApply.Body.Variables.Add(vN2); mApply.Body.Variables.Add(vQ);
            var ip = mApply.Body.GetILProcessor();

            // ticks++ ; if (ticks % 32 != 0) return;
            ip.Append(ip.Create(OpCodes.Ldsfld, rTicksV14));
            ip.Append(ip.Create(OpCodes.Ldc_I4_1));
            ip.Append(ip.Create(OpCodes.Add));
            ip.Append(ip.Create(OpCodes.Stsfld, rTicksV14));
            var lRun = ip.Create(OpCodes.Nop);
            ip.Append(ip.Create(OpCodes.Ldsfld, rTicksV14));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 64));   // V27: 节流 32→64（双区间横扫共 ~522 次查表，降频控开销）
            ip.Append(ip.Create(OpCodes.Rem));
            ip.Append(ip.Create(OpCodes.Brfalse, lRun));
            ip.Append(ip.Create(OpCodes.Ret));
            ip.Append(lRun);
            // ★★★ V38/V39 表就绪门 + 探针：
            //   Apply 现在也挂在大厅侧，大厅早期 databin 可能尚未加载 →
            //   DT_FindByKey 返回野指针，后面解引用即 SIGSEGV（v37 闪退 / 同 v32 fault 0x19）。
            //   V39 探针：DT_Count(14) 每次变化都打一行 V39:CNT14=<n> —— 用来定死"表到底何时可用"。
            if (vCnt14 != null) {
                var lSkipCnt = ip.Create(OpCodes.Nop);
                ip.Append(ip.Create(OpCodes.Ldc_I4, 14));
                ip.Append(ip.Create(OpCodes.Call, vCnt14));
                ip.Append(ip.Create(OpCodes.Stloc, vCd));
                ip.Append(ip.Create(OpCodes.Ldloc, vCd));
                ip.Append(ip.Create(OpCodes.Ldsfld, rCntV39));
                ip.Append(ip.Create(OpCodes.Beq, lSkipCnt));
                ip.Append(ip.Create(OpCodes.Ldloc, vCd));
                ip.Append(ip.Create(OpCodes.Stsfld, rCntV39));
                ip.Append(ip.Create(OpCodes.Ldstr, "V39:CNT14="));
                ip.Append(ip.Create(OpCodes.Ldloc, vCd));
                ip.Append(ip.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                ip.Append(ip.Create(OpCodes.Call, concat));
                ip.Append(ip.Create(OpCodes.Call, mLog));
                ip.Append(lSkipCnt);
                var lReady38 = ip.Create(OpCodes.Nop);
                ip.Append(ip.Create(OpCodes.Ldloc, vCd));
                ip.Append(ip.Create(OpCodes.Ldc_I4_0));
                ip.Append(ip.Create(OpCodes.Bgt, lReady38));
                ip.Append(ip.Create(OpCodes.Ret));
                ip.Append(lReady38);
            }

            Action<int, int> findLit = (table, id) => {
                ip.Append(ip.Create(OpCodes.Ldc_I4, table));
                ip.Append(ip.Create(OpCodes.Ldc_I4, id));
                ip.Append(ip.Create(OpCodes.Conv_I8));
                ip.Append(ip.Create(OpCodes.Call, vFind));
                ip.Append(ip.Create(OpCodes.Conv_I));
                ip.Append(ip.Create(OpCodes.Stloc, vP));
            };
            Action<int> findVar = (table) => {
                ip.Append(ip.Create(OpCodes.Ldc_I4, table));
                ip.Append(ip.Create(OpCodes.Ldloc, vI));
                ip.Append(ip.Create(OpCodes.Conv_I8));
                ip.Append(ip.Create(OpCodes.Call, vFind));
                ip.Append(ip.Create(OpCodes.Conv_I));
                ip.Append(ip.Create(OpCodes.Stloc, vP));
            };
            Action<int, int> writeAt = (off, val) => {
                ip.Append(ip.Create(OpCodes.Ldloc, vP));
                ip.Append(ip.Create(OpCodes.Ldc_I4, off));
                ip.Append(ip.Create(OpCodes.Add));
                ip.Append(ip.Create(OpCodes.Ldc_I4, val));
                ip.Append(ip.Create(OpCodes.Stind_I4));
            };

            // ---- V25: 元歌数值加强 —— 按 **strIdName 同名** 横扫英雄表 100..230 ----
            //   动机: 用户实测「数值加强只在 5V5 有效」→ 别的模式很可能用**另一个 cfgID 的同名英雄行**。
            //   做法: 先取 125 行的 strIdName(@8/@12 两个 hash 半字)，再扫全表 @8/@12 相同的所有行逐行加强。
            //         只要"英雄身份"相同就命中 → 与模式无关（前提：各模式共用同一张 hero 表）。
            //   写值仅限 **ActorStaticLobbyDataProvider 里确认过映射** 的字段：
            //     +72 iBaseHP→BaseHp / +84 iBaseATT→BaseAd / +88 iBaseINT→BaseAp
            //     +92 iBaseDEF→BaseDef / +96 iBaseRES→BaseRes / +112 iBaseAtkSpd→BaseAtkSpeed(=0 出厂值)
            var lNoHero = ip.Create(OpCodes.Nop);
            findLit(14, 125);
            ip.Append(ip.Create(OpCodes.Ldloc, vP));
            ip.Append(ip.Create(OpCodes.Brfalse, lNoHero));
            ip.Append(ip.Create(OpCodes.Ldloc, vP));
            ip.Append(ip.Create(OpCodes.Ldind_I4));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 125));
            ip.Append(ip.Create(OpCodes.Bne_Un, lNoHero));
            // vN1 = *(p+8) , vN2 = *(p+12)   —— strIdName 的两个 hash 半字
            ip.Append(ip.Create(OpCodes.Ldloc, vP));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 8));
            ip.Append(ip.Create(OpCodes.Add));
            ip.Append(ip.Create(OpCodes.Ldind_I4));
            ip.Append(ip.Create(OpCodes.Stloc, vN1));
            ip.Append(ip.Create(OpCodes.Ldloc, vP));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 12));
            ip.Append(ip.Create(OpCodes.Add));
            ip.Append(ip.Create(OpCodes.Ldind_I4));
            ip.Append(ip.Create(OpCodes.Stloc, vN2));
            {
                var lSkipHeroLog = ip.Create(OpCodes.Nop);
                ip.Append(ip.Create(OpCodes.Ldsfld, rLogV14));
                ip.Append(ip.Create(OpCodes.Brtrue, lSkipHeroLog));
                Action<int> logOff = (off) => {
                    ip.Append(ip.Create(OpCodes.Ldstr, "V16O:"));
                    ip.Append(ip.Create(OpCodes.Ldc_I4, off));
                    ip.Append(ip.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                    ip.Append(ip.Create(OpCodes.Call, concat));
                    ip.Append(ip.Create(OpCodes.Ldstr, "="));
                    ip.Append(ip.Create(OpCodes.Call, concat));
                    ip.Append(ip.Create(OpCodes.Ldloc, vP));
                    ip.Append(ip.Create(OpCodes.Ldc_I4, off));
                    ip.Append(ip.Create(OpCodes.Add));
                    ip.Append(ip.Create(OpCodes.Ldind_I4));
                    ip.Append(ip.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                    ip.Append(ip.Create(OpCodes.Call, concat));
                    ip.Append(ip.Create(OpCodes.Call, mLog));
                };
                for (int off = 64; off <= 144; off += 4) logOff(off);
                ip.Append(lSkipHeroLog);
            }
            // ===== V30: 恢复 hero 表行改写（详情面板/技能面板 读的就是这张表）=====
            //   v28/v29 把它降级成"只扫描"，导致英雄详情面板仍显示原值(152/2637/86/50/350)。
            //   现在 **双管齐下**：
            //     · 这里改表 → 详情面板 / 任何读表的地方 立刻看到新值
            //     · V29 的 BuildActorData 钩子 → 保证战斗内 actor 属性也对（模式无关）
            //   值：本体档 HP 30000 · ATT 3000 · INT 3000 · DEF 1000 · RES 1000 · 攻速 50
            //   门：*(p+0)==id 身份校验 + strIdName@8/@12 与 125 行同名 —— 两关都过才写
            {
                ip.Append(ip.Create(OpCodes.Ldc_I4, 100));
                ip.Append(ip.Create(OpCodes.Stloc, vI));
                var lSt = ip.Create(OpCodes.Nop);
                var lSe = ip.Create(OpCodes.Nop);
                var lSn = ip.Create(OpCodes.Nop);
                ip.Append(ip.Create(OpCodes.Br, lSt));
                ip.Append(lSt);
                ip.Append(ip.Create(OpCodes.Ldloc, vI));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 320));
                ip.Append(ip.Create(OpCodes.Bgt, lSe));
                findVar(14);
                ip.Append(ip.Create(OpCodes.Ldloc, vP));
                ip.Append(ip.Create(OpCodes.Brfalse, lSn));
                ip.Append(ip.Create(OpCodes.Ldloc, vP));
                ip.Append(ip.Create(OpCodes.Ldind_I4));
                ip.Append(ip.Create(OpCodes.Ldloc, vI));
                ip.Append(ip.Create(OpCodes.Bne_Un, lSn));       // *(p+0) == id
                ip.Append(ip.Create(OpCodes.Ldloc, vP));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 8));
                ip.Append(ip.Create(OpCodes.Add));
                ip.Append(ip.Create(OpCodes.Ldind_I4));
                ip.Append(ip.Create(OpCodes.Ldloc, vN1));
                ip.Append(ip.Create(OpCodes.Bne_Un, lSn));       // (p+8) == vN1
                ip.Append(ip.Create(OpCodes.Ldloc, vP));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 12));
                ip.Append(ip.Create(OpCodes.Add));
                ip.Append(ip.Create(OpCodes.Ldind_I4));
                ip.Append(ip.Create(OpCodes.Ldloc, vN2));
                ip.Append(ip.Create(OpCodes.Bne_Un, lSn));       // (p+12) == vN2
                writeAt(72, 30000);   // iBaseHP   → 详情面板"最大生命"
                writeAt(84, 3000);    // iBaseATT  → "物理攻击"
                writeAt(88, 3000);    // iBaseINT  → "法术攻击"
                writeAt(92, 1000);    // iBaseDEF  → "物理防御"
                writeAt(96, 1000);    // iBaseRES  → "法术防御"
                writeAt(112, 5000);   // iBaseAtkSpd → 面板"攻速加成 50%"（实测单位=万分比：50→0.5%，5000→50%）
                ip.Append(ip.Create(OpCodes.Ldstr, "V30T:"));
                ip.Append(ip.Create(OpCodes.Ldloc, vI));
                ip.Append(ip.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                ip.Append(ip.Create(OpCodes.Call, concat));
                ip.Append(ip.Create(OpCodes.Ldstr, ":as="));
                ip.Append(ip.Create(OpCodes.Call, concat));
                ip.Append(ip.Create(OpCodes.Ldloc, vP));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 112));
                ip.Append(ip.Create(OpCodes.Add));
                ip.Append(ip.Create(OpCodes.Ldind_I4));
                ip.Append(ip.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                ip.Append(ip.Create(OpCodes.Call, concat));
                ip.Append(ip.Create(OpCodes.Call, mLog));
                ip.Append(lSn);
                ip.Append(ip.Create(OpCodes.Ldloc, vI));
                ip.Append(ip.Create(OpCodes.Ldc_I4_1));
                ip.Append(ip.Create(OpCodes.Add));
                ip.Append(ip.Create(OpCodes.Stloc, vI));
                ip.Append(ip.Create(OpCodes.Br, lSt));
                ip.Append(lSe);
            }

            // ===== V35: 傀儡行 = cfgID 225 =====
            //   实证：傀儡"详情"面板 最大生命 **1336** / 物理攻击 166 / 移速 450，
            //         与日志 `ACT:cfg=225:tot=1336` 完全吻合 → 傀儡 = hero 表 225 行。
            //   傀儡的 4 个技能（秘术·归20s / 替10s / 缚10s / 突12s）**不在** 125xx 那批里 →
            //   顺着 225 行的技能槽（astSkill@+168，每项 20 字节，首 int = skillID）自动把它们也压成 CD 2000 / 耗蓝 0。
            {
                var lPupDone = ip.Create(OpCodes.Nop);
                var lPTop = ip.Create(OpCodes.Nop);
                var lPNext = ip.Create(OpCodes.Nop);
                findLit(14, 225);
                ip.Append(ip.Create(OpCodes.Ldloc, vP));
                ip.Append(ip.Create(OpCodes.Brfalse, lPupDone));
                ip.Append(ip.Create(OpCodes.Ldloc, vP));
                ip.Append(ip.Create(OpCodes.Ldind_I4));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 225));
                ip.Append(ip.Create(OpCodes.Bne_Un, lPupDone));
                writeAt(72, 40000);   // iBaseHP   原 1336
                writeAt(84, 4000);    // iBaseATT  原 166
                writeAt(88, 4000);    // iBaseINT  原 0
                writeAt(92, 1500);    // iBaseDEF  原 86
                writeAt(96, 1500);    // iBaseRES  原 50
                writeAt(112, 5000);   // iBaseAtkSpd（万分比 → 面板 50%）
                ip.Append(ip.Create(OpCodes.Ldstr, "V35:PUPPET225"));
                ip.Append(ip.Create(OpCodes.Call, mLog));
                ip.Append(ip.Create(OpCodes.Ldc_I4_0));
                ip.Append(ip.Create(OpCodes.Stloc, vI));
                ip.Append(ip.Create(OpCodes.Br, lPTop));
                ip.Append(lPTop);
                ip.Append(ip.Create(OpCodes.Ldloc, vI));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 6));
                ip.Append(ip.Create(OpCodes.Bge, lPupDone));
                ip.Append(ip.Create(OpCodes.Ldloc, vP));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 168));
                ip.Append(ip.Create(OpCodes.Add));
                ip.Append(ip.Create(OpCodes.Ldloc, vI));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 20));
                ip.Append(ip.Create(OpCodes.Mul));
                ip.Append(ip.Create(OpCodes.Add));
                ip.Append(ip.Create(OpCodes.Ldind_I4));
                ip.Append(ip.Create(OpCodes.Stloc, vCd));       // vCd = 技能槽 skillID
                ip.Append(ip.Create(OpCodes.Ldloc, vCd));
                ip.Append(ip.Create(OpCodes.Ldc_I4_0));
                ip.Append(ip.Create(OpCodes.Ble, lPNext));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 17));
                ip.Append(ip.Create(OpCodes.Ldloc, vCd));
                ip.Append(ip.Create(OpCodes.Conv_I8));
                ip.Append(ip.Create(OpCodes.Call, vFind));
                ip.Append(ip.Create(OpCodes.Conv_I));
                ip.Append(ip.Create(OpCodes.Stloc, vQ));
                ip.Append(ip.Create(OpCodes.Ldloc, vQ));
                ip.Append(ip.Create(OpCodes.Brfalse, lPNext));
                ip.Append(ip.Create(OpCodes.Ldloc, vQ));
                ip.Append(ip.Create(OpCodes.Ldind_I4));
                ip.Append(ip.Create(OpCodes.Ldloc, vCd));
                ip.Append(ip.Create(OpCodes.Bne_Un, lPNext));
                ip.Append(ip.Create(OpCodes.Ldloc, vQ));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 152));
                ip.Append(ip.Create(OpCodes.Add));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 2000));
                ip.Append(ip.Create(OpCodes.Stind_I4));         // iCoolDown
                ip.Append(ip.Create(OpCodes.Ldloc, vQ));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 264));
                ip.Append(ip.Create(OpCodes.Add));
                ip.Append(ip.Create(OpCodes.Ldc_I4_0));
                ip.Append(ip.Create(OpCodes.Stind_I4));         // iEnergyCost
                ip.Append(ip.Create(OpCodes.Ldstr, "V35:SK"));
                ip.Append(ip.Create(OpCodes.Ldloc, vCd));
                ip.Append(ip.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                ip.Append(ip.Create(OpCodes.Call, concat));
                ip.Append(ip.Create(OpCodes.Call, mLog));
                ip.Append(lPNext);
                ip.Append(ip.Create(OpCodes.Ldloc, vI));
                ip.Append(ip.Create(OpCodes.Ldc_I4_1));
                ip.Append(ip.Create(OpCodes.Add));
                ip.Append(ip.Create(OpCodes.Stloc, vI));
                ip.Append(ip.Create(OpCodes.Br, lPTop));
                ip.Append(lPupDone);
            }
            ip.Append(lNoHero);

            // ===== V17: 英雄表全扫 100..200 已跑过（log-v17-match1.txt 结论: @112 默认=0）→ 撤除，降噪 =====
            { }

            // ---- 表17 元歌技能族(12500..12599) 行原地 CD=2000ms ----
            ip.Append(ip.Create(OpCodes.Ldc_I4, 12500));
            ip.Append(ip.Create(OpCodes.Stloc, vI));
            var lTop = ip.Create(OpCodes.Nop);
            var lEnd = ip.Create(OpCodes.Nop);
            var lNext = ip.Create(OpCodes.Nop);
            ip.Append(ip.Create(OpCodes.Br, lTop));
            ip.Append(lTop);
            ip.Append(ip.Create(OpCodes.Ldloc, vI));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 12599));
            ip.Append(ip.Create(OpCodes.Bgt, lEnd));
            findVar(17);
            ip.Append(ip.Create(OpCodes.Ldloc, vP));
            ip.Append(ip.Create(OpCodes.Brfalse, lNext));
            // ★ V20 身份校验：*(int*)row 必须等于本次探查的 skillID，否则视为野指针，跳过
            ip.Append(ip.Create(OpCodes.Ldloc, vP));
            ip.Append(ip.Create(OpCodes.Ldind_I4));
            ip.Append(ip.Create(OpCodes.Ldloc, vI));
            ip.Append(ip.Create(OpCodes.Bne_Un, lNext));
            {
                var lSkipLog = ip.Create(OpCodes.Nop);
                ip.Append(ip.Create(OpCodes.Ldsfld, rLogV14));
                ip.Append(ip.Create(OpCodes.Brtrue, lSkipLog));
                ip.Append(ip.Create(OpCodes.Ldstr, "V22S:"));
                ip.Append(ip.Create(OpCodes.Ldloc, vI));
                ip.Append(ip.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                ip.Append(ip.Create(OpCodes.Call, concat));
                Action<int, string> appTag = (off, tag) => {
                    ip.Append(ip.Create(OpCodes.Ldstr, tag));
                    ip.Append(ip.Create(OpCodes.Call, concat));
                    ip.Append(ip.Create(OpCodes.Ldloc, vP));
                    ip.Append(ip.Create(OpCodes.Ldc_I4, off));
                    ip.Append(ip.Create(OpCodes.Add));
                    ip.Append(ip.Create(OpCodes.Ldind_I4));
                    ip.Append(ip.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                    ip.Append(ip.Create(OpCodes.Call, concat));
                };
                appTag(200, ":DMG=");   // iBaseDamage
                appTag(152, ":CD=");    // iCoolDown
                appTag(272, ":CDG=");   // iCoolDownGrowth
                appTag(264, ":ENE=");   // iEnergyCost
                appTag(268, ":EG=");    // iEnergyCostGrowth
                appTag(168, ":SC=");    // iSelfSkillCombine  → skillCombine(21) 行号
                appTag(172, ":TC=");    // iTargetSkillCombine
                ip.Append(ip.Create(OpCodes.Call, mLog));
                // V24 探针（12510 全行 128×int32）已完成取证：行内无伤害数值 → 已撤除，降噪
                ip.Append(lSkipLog);
            }
            // ---- V25 ①: 技能基础伤害 iBaseDamage(+200)
            //      实测元歌各行原值全是 0（V22S:DMG=0）→ 直接给 3000；若某行原值非 0 则按 ×5 相对放大 ----
            ip.Append(ip.Create(OpCodes.Ldloc, vP));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 200));
            ip.Append(ip.Create(OpCodes.Add));
            ip.Append(ip.Create(OpCodes.Ldind_I4));
            ip.Append(ip.Create(OpCodes.Stloc, vCd));       // vCd = orig
            ip.Append(ip.Create(OpCodes.Ldloc, vP));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 200));
            ip.Append(ip.Create(OpCodes.Add));              // addr
            var lUseMul = ip.Create(OpCodes.Nop);
            var lStoreDmg = ip.Create(OpCodes.Nop);
            ip.Append(ip.Create(OpCodes.Ldloc, vCd));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 0));
            ip.Append(ip.Create(OpCodes.Bgt, lUseMul));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 3000));
            ip.Append(ip.Create(OpCodes.Br, lStoreDmg));
            ip.Append(lUseMul);
            ip.Append(ip.Create(OpCodes.Ldloc, vCd));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 5));
            ip.Append(ip.Create(OpCodes.Mul));
            ip.Append(lStoreDmg);
            ip.Append(ip.Create(OpCodes.Stind_I4));
            // ---- V22 ②: iCoolDownGrowth(+272)=0 / iEnergyCostGrowth(+268)=0
            //      → 升级不再把 CD / 耗蓝往上拉（这正是「升级后CD变回去」的另一条通道）----
            writeAt(272, 0);
            writeAt(268, 0);
            // V18 分档 CD：傀儡形态技能(12500/12501/12502) 原始就是 1000ms —— V12f 把它拉到 3s 反而变慢，现已复位
            //              本体/换位(12510/12520/12530/12540/12541) 原始 11~20s → 压到 2s
            ip.Append(ip.Create(OpCodes.Ldc_I4, 2000));
            ip.Append(ip.Create(OpCodes.Stloc, vCd));
            {
                var lAdj = ip.Create(OpCodes.Nop);
                ip.Append(ip.Create(OpCodes.Ldloc, vI));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 12503));
                ip.Append(ip.Create(OpCodes.Bge, lAdj));
                ip.Append(ip.Create(OpCodes.Ldc_I4, 1000));
                ip.Append(ip.Create(OpCodes.Stloc, vCd));
                ip.Append(lAdj);
            }
            ip.Append(ip.Create(OpCodes.Ldloc, vP));
            ip.Append(ip.Create(OpCodes.Ldc_I4, 152));
            ip.Append(ip.Create(OpCodes.Add));
            ip.Append(ip.Create(OpCodes.Ldloc, vCd));
            ip.Append(ip.Create(OpCodes.Stind_I4));   // iCoolDown
            writeAt(264, 0);      // iEnergyCost → 0（技能不耗蓝）
            // V20: DT_UpdateData 回写已撤（同英雄行理由）
            ip.Append(lNext);
            ip.Append(ip.Create(OpCodes.Ldloc, vI));
            ip.Append(ip.Create(OpCodes.Ldc_I4_1));
            ip.Append(ip.Create(OpCodes.Add));
            ip.Append(ip.Create(OpCodes.Stloc, vI));
            ip.Append(ip.Create(OpCodes.Br, lTop));
            ip.Append(lEnd);
            ip.Append(ip.Create(OpCodes.Ldc_I4_1));
            ip.Append(ip.Create(OpCodes.Stsfld, rLogV14));
            ip.Append(ip.Create(OpCodes.Ret));
            mApply.Body.MaxStackSize = 16;

            // 挂到 SkillLinkerComponent::LateUpdate（内部只对 IsHostCtrlActor 放行 = 玩家本体/傀儡）
            var tSlcV14 = Main("Assets.Scripts.GameLogic.SkillLinkerComponent");
            var mLuV14 = tSlcV14.Methods.FirstOrDefault(m => m.Name == "LateUpdate" && m.Parameters.Count == 1);
            if (mLuV14 != null && mLuV14.HasBody) {
                mLuV14.Body.InitLocals = true;
                var pl = mLuV14.Body.GetILProcessor();
                var fl = mLuV14.Body.Instructions[0];
                pl.InsertBefore(fl, pl.Create(OpCodes.Call, Mod.ImportReference(mApply)));
                mLuV14.Body.MaxStackSize = System.Math.Max(mLuV14.Body.MaxStackSize, 16);
                Console.WriteLine("V14 WzFix.Apply hooked on SkillLinkerComponent.LateUpdate");
            } else Console.WriteLine("V14 LateUpdate NOT FOUND");

            // 追加挂点: SkillSlotLinker::InitSkillSlot 入口 —— actor 创建时就先把表改好，
            // 让英雄/傀儡"出生即 30000 上限"，而不是等第一帧 LateUpdate。
            var tSslV14 = Main("Assets.Scripts.GameLogic.SkillSlotLinker");
            var mInitV14 = tSslV14.Methods.FirstOrDefault(m => m.Name == "InitSkillSlot");
            // ★ V20: SkillSlotLinker::InitSkillSlot 上的两个挂点全部撤除。
            //   ① V16 slot 探针在最开头就 callvirt get_ConfigId() —— 若此刻 Actor 句柄还没绑定，
            //      在这里抛异常会让 InitSkillSlot **整体中止**（skillIndicator 还没建）→
            //      正是"连按键和游戏HUD都没了"的症状。
            //   ② Apply() 挂在该方法入口会在 actor 初始化最早期调用 databin，风险不对称。
            //   技能槽初始化的纯净性 > 抢那一帧，改由 LateUpdate 挂点 + V15 补满承担。
            Console.WriteLine("V20 InitSkillSlot hooks REMOVED (probe + early Apply)");
        }

        // ===== V15: 血量上限增长时，把玩家本体/傀儡的当前血量补满 =====
        // 现象: 上限到 30000 但当前值仍 ≈2000 —— actor 创建时按旧表(2637)算的血，之后上限被重算/改写。
        // 语义: 只在 actorHpTotal **相对本次调用前增长** 时补满（创建/升级触发）；
        //       受伤时上限不变 → 不补满 → 不是无敌。仅对 ActorHelper::IsHostCtrlActor 放行。
        {
            var tVlc15 = Main("Assets.Scripts.GameLogic.ValueLinkerComponent");
            var mSetHp15 = tVlc15.Methods.FirstOrDefault(m => m.Name == "SetActorHp" && m.Parameters.Count == 2);
            MethodReference mIsHost15 = null;
            {
                var tSlc15 = Main("Assets.Scripts.GameLogic.SkillLinkerComponent");
                var mLu15 = tSlc15.Methods.FirstOrDefault(m => m.Name == "LateUpdate" && m.Parameters.Count == 1);
                if (mLu15 != null && mLu15.HasBody)
                    foreach (var ii in mLu15.Body.Instructions)
                        if (ii.Operand is MethodReference mr15 && mr15.Name == "IsHostCtrlActor") { mIsHost15 = Mod.ImportReference(mr15); break; }
            }
            FieldReference fHp15 = null, fTot15 = null, fAp15 = null;
            MethodReference mHandle17 = null, mCfgId17 = null;
            {
                var tSsl17 = Main("Assets.Scripts.GameLogic.SkillSlotLinker");
                var mI17 = tSsl17.Methods.FirstOrDefault(m => m.Name == "InitSkillSlot");
                if (mI17 != null && mI17.HasBody)
                    foreach (var ii in mI17.Body.Instructions)
                        if (ii.Operand is MethodReference mr17) {
                            if (mr17.Name == "get_handle" && mHandle17 == null) mHandle17 = Mod.ImportReference(mr17);
                            else if (mr17.Name == "get_ConfigId" && mCfgId17 == null) mCfgId17 = Mod.ImportReference(mr17);
                        }
            }
            foreach (var f in tVlc15.Fields) {
                if (f.Name == "actorHp") fHp15 = Mod.ImportReference(f);
                else if (f.Name == "actorHpTotal") fTot15 = Mod.ImportReference(f);
            }
            foreach (var f in Main("Assets.Scripts.GameLogic.LogicComponent").Fields)
                if (f.Name == "actorPtr") fAp15 = Mod.ImportReference(f);
            Console.WriteLine("V15 refs ishost=" + (mIsHost15 != null) + " hp=" + (fHp15 != null)
                + " tot=" + (fTot15 != null) + " actptr=" + (fAp15 != null) + " sethp=" + (mSetHp15 != null));
            if (mIsHost15 != null && fHp15 != null && fTot15 != null && fAp15 != null && mSetHp15 != null && mSetHp15.HasBody) {
                mSetHp15.Body.InitLocals = true;
                var vOld15 = new VariableDefinition(Mod.TypeSystem.Int32);
                mSetHp15.Body.Variables.Add(vOld15);
                var p15 = mSetHp15.Body.GetILProcessor();
                var first15 = mSetHp15.Body.Instructions[0];
                p15.InsertBefore(first15, p15.Create(OpCodes.Ldarg_0));
                p15.InsertBefore(first15, p15.Create(OpCodes.Ldfld, fTot15));
                p15.InsertBefore(first15, p15.Create(OpCodes.Stloc, vOld15));
                var ret15 = mSetHp15.Body.Instructions.First(i => i.OpCode == OpCodes.Ret);
                var skip15 = p15.Create(OpCodes.Nop);
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldarg_0));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldfld, fTot15));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldloc, vOld15));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ble, skip15));
                // V17: 上限增长事件 = 该 actor 创建/升级 → 打印 cfgID（用来抓傀儡的 cfgID）
                if (mHandle17 != null && mCfgId17 != null) {
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Ldstr, "ACT:cfg="));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Ldarg_0));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Ldflda, fAp15));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Call, mHandle17));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Callvirt, mCfgId17));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Box, Mod.TypeSystem.UInt32));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Call, concat));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Ldstr, ":tot="));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Call, concat));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Ldarg_0));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Ldfld, fTot15));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Call, concat));
                    p15.InsertBefore(ret15, p15.Create(OpCodes.Call, mLog));
                }
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldarg_0));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldflda, fAp15));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Call, mIsHost15));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Brfalse, skip15));
                // ★ V42: host 演员的"上限增长"事件（= 创建/升级）里，先把上限强制到 30000，再补满当前值
                //   这样 actor 一出生就是 30000/30000；受伤时上限不变 → 不补 → 不是无敌
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldarg_0));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldc_I4, 30000));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Stfld, fTot15));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldarg_0));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldarg_0));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldfld, fTot15));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Stfld, fHp15));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldstr, "V15:REFILL:"));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldarg_0));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Ldfld, fTot15));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Box, Mod.TypeSystem.Int32));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Call, concat));
                p15.InsertBefore(ret15, p15.Create(OpCodes.Call, mLog));
                p15.InsertBefore(ret15, skip15);
                mSetHp15.Body.MaxStackSize = System.Math.Max(mSetHp15.Body.MaxStackSize, 16);
                Console.WriteLine("V15 refill-on-maxgrowth hooked");
            } else Console.WriteLine("V15 refs missing");
        }

        // ===== V28: 在 **actor 属性计算的那一刻** 改值（正确时机 + 模式无关）=====
        //   挂钩 ActorStaticLobbyDataProvider::BuildActorData(ResHeroCfgInfo heroCfg, ActorStaticData& actorData)
        //   —— 该方法就是逐字段把 hero 行搬进 actorData.TheBaseAttribute 的地方，位于 actor 创建流程内。
        //   本体(cfgID==125) → 本体档；cfgID 1100..1400 → 傀儡档（更高）。
        {
            TypeDefinition tLobby28 = null, tdASD28 = null, tdBA28 = null;
            foreach (var t2 in Mod.Types) {
                if (t2.FullName == "Assets.Scripts.GameLogic.DataCenter.ActorStaticLobbyDataProvider") tLobby28 = t2;
                else if (t2.FullName == "Assets.Scripts.GameLogic.DataCenter.ActorStaticData") tdASD28 = t2;
            }
            if (tdASD28 != null) foreach (var n in tdASD28.NestedTypes)
                if (n.Name == "BaseAttribute") tdBA28 = n;
            MethodDefinition mBld28 = null;
            if (tLobby28 != null) foreach (var m in tLobby28.Methods)
                if (m.Name == "BuildActorData") { mBld28 = m; break; }
            FieldReference fTheBase28 = null;
            if (tdASD28 != null) foreach (var f in tdASD28.Fields)
                if (f.Name == "TheBaseAttribute") { fTheBase28 = Mod.ImportReference(f); break; }
            FieldReference fHp28=null, fPLHp28=null, fAd28=null, fPLAd28=null, fAp28=null, fPLAp28=null,
                fDef28=null, fPLDef28=null, fRes28=null, fPLRes28=null, fAspd28=null, fPLAspd28=null, fMspd28=null;
            if (tdBA28 != null) foreach (var f in tdBA28.Fields) {
                var fr = Mod.ImportReference(f);
                switch (f.Name) {
                    case "BaseHp": fHp28 = fr; break;
                    case "PerLvHp": fPLHp28 = fr; break;
                    case "BaseAd": fAd28 = fr; break;
                    case "PerLvAd": fPLAd28 = fr; break;
                    case "BaseAp": fAp28 = fr; break;
                    case "PerLvAp": fPLAp28 = fr; break;
                    case "BaseDef": fDef28 = fr; break;
                    case "PerLvDef": fPLDef28 = fr; break;
                    case "BaseRes": fRes28 = fr; break;
                    case "PerLvRes": fPLRes28 = fr; break;
                    case "BaseAtkSpeed": fAspd28 = fr; break;
                    case "PerLvAtkSpeed": fPLAspd28 = fr; break;
                    case "MoveSpeed": fMspd28 = fr; break;
                }
            }
            FieldReference fCfgId28 = null;
            var tdHero28 = FpA.MainModule.Types.FirstOrDefault(x => x.FullName == "ResData.ResHeroCfgInfo");
            if (tdHero28 != null) foreach (var f in tdHero28.Fields) if (f.Name == "dwCfgID") { fCfgId28 = Mod.ImportReference(f); break; }
            Console.WriteLine("V28 refs lobby=" + (tLobby28 != null) + " m=" + (mBld28 != null) + " body=" + (mBld28 != null && mBld28.HasBody)
                + " fld=" + (fTheBase28 != null) + " base=" + (tdBA28 != null) + " hp=" + (fHp28 != null)
                + " ad=" + (fAd28 != null) + " ap=" + (fAp28 != null) + " aspd=" + (fAspd28 != null) + " cfgid=" + (fCfgId28 != null));
            if (mBld28 != null && mBld28.HasBody && fTheBase28 != null && tdBA28 != null
                && fHp28 != null && fAd28 != null && fAp28 != null && fDef28 != null && fRes28 != null
                && fAspd28 != null && fCfgId28 != null) {
                mBld28.Body.InitLocals = true;
                var p28 = mBld28.Body.GetILProcessor();
                var vEx28 = new VariableDefinition(Mod.ImportReference(Msc("System.Exception")));
                mBld28.Body.Variables.Add(vEx28);
                var rets28 = mBld28.Body.Instructions.Where(i => i.OpCode == OpCodes.Ret).ToList();
                var ret28 = rets28[rets28.Count - 1];
                // ★ V29 关键修正①：插入点选在 `ldc.i4.1` **之前**（此处求值栈为空），
                //   而不是 ret 之前（那时栈上还压着返回值 1，无法在其上开 try 块）。
                var anchor28 = ret28.Previous != null && ret28.Previous.OpCode == OpCodes.Ldc_I4_1
                    ? ret28.Previous : ret28;
                var inserted28 = new System.Collections.Generic.List<Instruction>();
                Action<Instruction> ins28 = (i) => { p28.InsertBefore(anchor28, i); inserted28.Add(i); };
                // ★ V29 关键修正②：读 heroCfg 字段用 ldarga.s（与原方法自身写法一致），不用 ldarg.1
                Func<Instruction> pushCfgId28 = () => {
                    ins28(p28.Create(OpCodes.Ldarga_S, mBld28.Parameters[1]));
                    ins28(p28.Create(OpCodes.Ldfld, fCfgId28));
                    return inserted28[inserted28.Count - 1];
                };
                Action<FieldReference, int> wf28 = (fr, val) => {
                    ins28(p28.Create(OpCodes.Ldarg_2));
                    ins28(p28.Create(OpCodes.Ldflda, fTheBase28));
                    ins28(p28.Create(OpCodes.Ldc_I4, val));
                    ins28(p28.Create(OpCodes.Stfld, fr));
                };
                Action<string> tag28 = (tg) => {
                    ins28(p28.Create(OpCodes.Ldstr, tg));
                    pushCfgId28();
                    ins28(p28.Create(OpCodes.Box, Mod.TypeSystem.UInt32));
                    ins28(p28.Create(OpCodes.Call, concat));
                    ins28(p28.Create(OpCodes.Call, mLog));
                };
                var lDone28 = p28.Create(OpCodes.Nop);
                var lHost28 = p28.Create(OpCodes.Nop);
                // if (cfgId == 125) goto HOST
                pushCfgId28();
                ins28(p28.Create(OpCodes.Ldc_I4, 125));
                ins28(p28.Create(OpCodes.Beq, lHost28));
                // if (cfgId < 1100) goto DONE
                pushCfgId28();
                ins28(p28.Create(OpCodes.Ldc_I4, 1100));
                ins28(p28.Create(OpCodes.Blt, lDone28));
                // if (cfgId > 1400) goto DONE
                pushCfgId28();
                ins28(p28.Create(OpCodes.Ldc_I4, 1400));
                ins28(p28.Create(OpCodes.Bgt, lDone28));
                // ---- 傀儡档（安全字段先写，量纲未确认的字段最后写）----
                tag28("V28PUPPET:");
                wf28(fHp28, 80000);
                if (fPLHp28 != null) wf28(fPLHp28, 3000);
                wf28(fAd28, 8000);
                if (fPLAd28 != null) wf28(fPLAd28, 800);
                wf28(fAp28, 8000);
                if (fPLAp28 != null) wf28(fPLAp28, 800);
                wf28(fDef28, 3000);
                if (fPLDef28 != null) wf28(fPLDef28, 300);
                wf28(fRes28, 3000);
                if (fPLRes28 != null) wf28(fPLRes28, 300);
                if (fMspd28 != null) wf28(fMspd28, 4000);
                if (fAspd28 != null) wf28(fAspd28, 5000);   // 万分比      // 量纲未确认 → 放最后
                ins28(p28.Create(OpCodes.Br, lDone28));
                // ---- 本体档 ----
                ins28(lHost28);
                tag28("V28HOST:");
                wf28(fHp28, 30000);
                if (fPLHp28 != null) wf28(fPLHp28, 2000);
                wf28(fAd28, 3000);
                if (fPLAd28 != null) wf28(fPLAd28, 500);
                wf28(fAp28, 3000);
                if (fPLAp28 != null) wf28(fPLAp28, 500);
                wf28(fDef28, 1000);
                if (fPLDef28 != null) wf28(fPLDef28, 200);
                wf28(fRes28, 1000);
                if (fPLRes28 != null) wf28(fPLRes28, 200);
                if (fMspd28 != null) wf28(fMspd28, 4000);
                if (fAspd28 != null) wf28(fAspd28, 5000);   // 万分比
                ins28(lDone28);
                // ---- ★ V29 关键修正③：整段包 try/catch —— 任何异常都被吞掉，绝不阻断 actor 创建 ----
                var lLeave28 = p28.Create(OpCodes.Leave, anchor28);
                ins28(lLeave28);
                var stEx28 = p28.Create(OpCodes.Stloc, vEx28);
                ins28(stEx28);
                var lLeaveH28 = p28.Create(OpCodes.Leave, anchor28);
                ins28(lLeaveH28);
                var lEnd28 = p28.Create(OpCodes.Nop);
                ins28(lEnd28);
                var eh28 = new ExceptionHandler(ExceptionHandlerType.Catch);
                eh28.TryStart = inserted28[0];
                eh28.TryEnd = stEx28;
                eh28.HandlerStart = stEx28;
                eh28.HandlerEnd = lEnd28;
                eh28.CatchType = Mod.ImportReference(Msc("System.Exception"));
                mBld28.Body.ExceptionHandlers.Add(eh28);
                mBld28.Body.MaxStackSize = System.Math.Max(mBld28.Body.MaxStackSize, 8);
                Console.WriteLine("V29 BuildActorData hooked (try/catch guarded, ldarga.s, one ret=" + rets28.Count + ")");
            } else Console.WriteLine("V28 refs MISSING (skipped)");
        }

        // ===== V30: 战斗属性链的真正入口 —— PropertyHelper::SetValueDataArrData(uint heroCfgId, uint skinId) =====
        //   该方法的流程：构造 ActorMeta → IGameActorDataProvider::GetActorStaticData(ActorMeta&, ActorStaticData&)
        //   → 用 ActorStaticData.TheBaseAttribute 逐项 Init 进静态数组 mActorValue[]
        //   （实测索引映射：mActorValue[5]=HP · [1]=AD · [2]=AP · [3]=DEF · [4]=RES · [18]=攻速 · [6]=暴击）
        //   → 之后 ValueLinkerComponent 的每 actor stValueDataInfo[] 由它派生。
        //   ★ 在 GetActorStaticData 返回（pop）之后、第一个 Init 之前覆盖 TheBaseAttribute —— 此时求值栈为空，安全。
        {
            var tPh30 = Mod.Types.FirstOrDefault(x => x.FullName == "Assets.Scripts.GameSystem.PropertyHelper");
            MethodDefinition mSvd30 = null;
            if (tPh30 != null) foreach (var m in tPh30.Methods)
                if (m.Name == "SetValueDataArrData" && m.Parameters.Count == 2) { mSvd30 = m; break; }
            TypeDefinition tdASD30 = null, tdBA30 = null;
            foreach (var t2 in Mod.Types)
                if (t2.FullName == "Assets.Scripts.GameLogic.DataCenter.ActorStaticData") tdASD30 = t2;
            FieldReference fTheBase30 = null;
            if (tdASD30 != null) {
                foreach (var f in tdASD30.Fields) if (f.Name == "TheBaseAttribute") fTheBase30 = Mod.ImportReference(f);
                foreach (var n in tdASD30.NestedTypes) if (n.Name == "BaseAttribute") tdBA30 = n;
            }
            FieldReference fHp30 = null, fPLHp30 = null, fAd30 = null, fPLAd30 = null, fAp30 = null, fPLAp30 = null,
                fDef30 = null, fPLDef30 = null, fRes30 = null, fPLRes30 = null, fAspd30 = null, fPLAspd30 = null, fMspd30 = null;
            if (tdBA30 != null) foreach (var f in tdBA30.Fields) {
                var fr = Mod.ImportReference(f);
                switch (f.Name) {
                    case "BaseHp": fHp30 = fr; break;
                    case "PerLvHp": fPLHp30 = fr; break;
                    case "BaseAd": fAd30 = fr; break;
                    case "PerLvAd": fPLAd30 = fr; break;
                    case "BaseAp": fAp30 = fr; break;
                    case "PerLvAp": fPLAp30 = fr; break;
                    case "BaseDef": fDef30 = fr; break;
                    case "PerLvDef": fPLDef30 = fr; break;
                    case "BaseRes": fRes30 = fr; break;
                    case "PerLvRes": fPLRes30 = fr; break;
                    case "BaseAtkSpeed": fAspd30 = fr; break;
                    case "PerLvAtkSpeed": fPLAspd30 = fr; break;
                    case "MoveSpeed": fMspd30 = fr; break;
                }
            }
            VariableDefinition vAsd30 = null;
            Instruction anchor30 = null;
            if (mSvd30 != null && mSvd30.HasBody) {
                foreach (var v in mSvd30.Body.Variables)
                    if (v.VariableType.FullName == "Assets.Scripts.GameLogic.DataCenter.ActorStaticData") { vAsd30 = v; break; }
                var callGas30 = mSvd30.Body.Instructions.FirstOrDefault(i => (i.Operand is MethodReference mr30) && mr30.Name == "GetActorStaticData");
                if (callGas30 != null && callGas30.Next != null && callGas30.Next.OpCode == OpCodes.Pop)
                    anchor30 = callGas30.Next.Next;
            }
            Console.WriteLine("V30 refs ph=" + (tPh30 != null) + " m=" + (mSvd30 != null) + " asd=" + (vAsd30 != null)
                + " base=" + (tdBA30 != null) + " hp=" + (fHp30 != null) + " ad=" + (fAd30 != null)
                + " aspd=" + (fAspd30 != null) + " anchor=" + (anchor30 != null));
            if (false && mSvd30 != null && vAsd30 != null && fTheBase30 != null && fHp30 != null && fAd30 != null && anchor30 != null) {
                var p30 = mSvd30.Body.GetILProcessor();
                Action<FieldReference, int> w30 = (fr, val) => {
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldloca, vAsd30));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldflda, fTheBase30));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldc_I4, val));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Stfld, fr));
                };
                var lDone30 = p30.Create(OpCodes.Nop);
                var lHost30 = p30.Create(OpCodes.Nop);
                // ★ V31: 把英雄 **名字** 打出来（每个英雄一行）—— 用来在英雄列表里精确定位元歌(125)
                MethodReference mFindHero31 = null, mSid2Str31 = null;
                FieldReference fName31 = null;
                {
                    foreach (var tt in Mod.Types) {
                        foreach (var mm in tt.Methods) {
                            if (!mm.HasBody) continue;
                            foreach (var ii in mm.Body.Instructions) {
                                if (ii.Operand is MethodReference mr31) {
                                    if (mFindHero31 == null && mr31.Name == "FindByKey"
                                        && mr31.DeclaringType.FullName.Contains("heroDatabin")) mFindHero31 = Mod.ImportReference(mr31);
                                    else if (mSid2Str31 == null && mr31.FullName == "System.String StringId2::op_Implicit(StringId2)") mSid2Str31 = Mod.ImportReference(mr31);
                                }
                            }
                            if (mFindHero31 != null && mSid2Str31 != null) break;
                        }
                        if (mFindHero31 != null && mSid2Str31 != null) break;
                    }
                    var tdHero31 = FpA.MainModule.Types.FirstOrDefault(x => x.FullName == "ResData.ResHeroCfgInfo");
                    if (tdHero31 != null) foreach (var f in tdHero31.Fields) if (f.Name == "strIdName") { fName31 = Mod.ImportReference(f); break; }
                }
                Console.WriteLine("V31 refs find=" + (mFindHero31 != null) + " sid2str=" + (mSid2Str31 != null) + " name=" + (fName31 != null));
                if (mFindHero31 != null && mSid2Str31 != null && fName31 != null) {
                    mSvd30.Body.InitLocals = true;
                    var vHero31 = new VariableDefinition(Mod.ImportReference(
                        FpA.MainModule.Types.First(x => x.FullName == "ResData.ResHeroCfgInfo")));
                    mSvd30.Body.Variables.Add(vHero31);
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldloca, vHero31));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldarg_1));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Call, mFindHero31));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Pop));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldstr, "V31:"));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldarg_1));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Box, Mod.TypeSystem.UInt32));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Call, concat));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldstr, ":"));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Call, concat));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldloca, vHero31));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldfld, fName31));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Call, mSid2Str31));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Call, concat));
                    p30.InsertBefore(anchor30, p30.Create(OpCodes.Call, mLog));
                    Console.WriteLine("V31 hero-name log injected");
                }
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldarg_1));      // heroCfgId
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldc_I4, 125));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Beq, lHost30));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldarg_1));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldc_I4, 1100));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Blt, lDone30));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldarg_1));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldc_I4, 1400));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Bgt, lDone30));
                // ---- 傀儡档 ----
                w30(fHp30, 80000);   if (fPLHp30 != null) w30(fPLHp30, 3000);
                w30(fAd30, 8000);    if (fPLAd30 != null) w30(fPLAd30, 800);
                if (fAp30 != null) w30(fAp30, 8000);   if (fPLAp30 != null) w30(fPLAp30, 800);
                if (fDef30 != null) w30(fDef30, 3000); if (fPLDef30 != null) w30(fPLDef30, 300);
                if (fRes30 != null) w30(fRes30, 3000); if (fPLRes30 != null) w30(fPLRes30, 300);
                if (fMspd30 != null) w30(fMspd30, 4000);
                if (fAspd30 != null) w30(fAspd30, 5000);   // 万分比
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Br, lDone30));
                // ---- 本体档 ----
                p30.InsertBefore(anchor30, lHost30);
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldstr, "V30HOST:"));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Ldarg_1));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Box, Mod.TypeSystem.UInt32));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Call, concat));
                p30.InsertBefore(anchor30, p30.Create(OpCodes.Call, mLog));
                w30(fHp30, 30000);   if (fPLHp30 != null) w30(fPLHp30, 2000);
                w30(fAd30, 3000);    if (fPLAd30 != null) w30(fPLAd30, 500);
                if (fAp30 != null) w30(fAp30, 3000);   if (fPLAp30 != null) w30(fPLAp30, 500);
                if (fDef30 != null) w30(fDef30, 1000); if (fPLDef30 != null) w30(fPLDef30, 200);
                if (fRes30 != null) w30(fRes30, 1000); if (fPLRes30 != null) w30(fPLRes30, 200);
                if (fMspd30 != null) w30(fMspd30, 4000);
                if (fAspd30 != null) w30(fAspd30, 5000);   // 万分比
                p30.InsertBefore(anchor30, lDone30);
                mSvd30.Body.MaxStackSize = System.Math.Max(mSvd30.Body.MaxStackSize, 8);
                Console.WriteLine("V30 PropertyHelper.SetValueDataArrData hooked");
            } else Console.WriteLine("V30 refs MISSING");
        }

        // ===== V32: 抢在 actor 创建之前改表 —— 挂 heroDatabin::FindByKey(ResHeroCfgInfo&, uint) =====
        //   实测证据：本局元歌(表行125)的 ACT:cfg=505:tot=3010 ≈ 2637+成长 → 说明战斗 actor 的
        //   HP 是**创建时读表**得到的，而我们的 Apply 跑在第一帧 LateUpdate（actor 早已建好），
        //   所以对局数值一直没变；PropertyHelper.SetValueDataArrData 在本 build 的战斗链上**根本没被调用**
        //   （全程 0 条 V31/V30HOST 日志）。
        //   → 改挂 C# 读表入口：任何地方查 125 行（大厅/选人界面的预加载都会查）就顺手把 native 行改好，
        //     这样进对局时 actor 读到的是改过的值。
        {
            var tGdm32 = Mod.Types.FirstOrDefault(x => x.FullName == "ResData.GameDataMgr");
            TypeDefinition hdb32 = null;
            if (tGdm32 != null) foreach (var n in tGdm32.NestedTypes) if (n.Name == "heroDatabin") hdb32 = n;
            MethodDefinition mFind32 = null;
            if (hdb32 != null) foreach (var m in hdb32.Methods) if (m.Name == "FindByKey" && m.Parameters.Count == 2) { mFind32 = m; break; }
            MethodReference mDtFind32 = null, mDtCnt36 = null;
            var tDtF32 = Mod.Types.FirstOrDefault(x => x.FullName == "ResData._DatabinTableFuncs");
            if (tDtF32 != null) foreach (var m in tDtF32.Methods) {
                if (m.Name == "DT_FindByKey") mDtFind32 = Mod.ImportReference(m);
                else if (m.Name == "DT_Count") mDtCnt36 = Mod.ImportReference(m);
            }
            Console.WriteLine("V32/V36 refs hdb=" + (hdb32 != null) + " find=" + (mFind32 != null)
                + " dtfind=" + (mDtFind32 != null) + " dtcount=" + (mDtCnt36 != null));
            if (false && mFind32 != null && mFind32.HasBody && mDtFind32 != null && mDtCnt36 != null) {
                mFind32.Body.InitLocals = true;
                var p32 = mFind32.Body.GetILProcessor();
                var vP32 = new VariableDefinition(Mod.TypeSystem.IntPtr);
                mFind32.Body.Variables.Add(vP32);
                var first32 = mFind32.Body.Instructions[0];
                var lSkip32 = p32.Create(OpCodes.Nop);
                // ★★★ V36 表就绪门（v32 闪退的根治）：DT_Count(14) <= 0 表示表还没加载 → 立刻跳过，
                //     绝不触碰 DT_FindByKey 的返回值，避免解引用野指针（v32 就是在这崩的：fault 0x19/uptime 18s）
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldc_I4, 14));
                p32.InsertBefore(first32, p32.Create(OpCodes.Call, mDtCnt36));
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldc_I4_0));
                p32.InsertBefore(first32, p32.Create(OpCodes.Ble, lSkip32));
                // if (key != 125) goto skip
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldarg_2));
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldc_I4, 125));
                p32.InsertBefore(first32, p32.Create(OpCodes.Bne_Un, lSkip32));
                // p = DT_FindByKey(14, 125)
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldc_I4, 14));
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldc_I4, 125));
                p32.InsertBefore(first32, p32.Create(OpCodes.Conv_I8));
                p32.InsertBefore(first32, p32.Create(OpCodes.Call, mDtFind32));
                p32.InsertBefore(first32, p32.Create(OpCodes.Conv_I));
                p32.InsertBefore(first32, p32.Create(OpCodes.Stloc, vP32));
                // if (p == 0) goto skip
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldloc, vP32));
                p32.InsertBefore(first32, p32.Create(OpCodes.Brfalse, lSkip32));
                // if (*(int*)p != 125) goto skip   ← 行身份自证
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldloc, vP32));
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldind_I4));
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldc_I4, 125));
                p32.InsertBefore(first32, p32.Create(OpCodes.Bne_Un, lSkip32));
                Action<int, int> w32 = (off, val) => {
                    p32.InsertBefore(first32, p32.Create(OpCodes.Ldloc, vP32));
                    p32.InsertBefore(first32, p32.Create(OpCodes.Ldc_I4, off));
                    p32.InsertBefore(first32, p32.Create(OpCodes.Add));
                    p32.InsertBefore(first32, p32.Create(OpCodes.Ldc_I4, val));
                    p32.InsertBefore(first32, p32.Create(OpCodes.Stind_I4));
                };
                w32(72, 30000);   // iBaseHP
                w32(84, 3000);    // iBaseATT
                w32(88, 3000);    // iBaseINT
                w32(92, 1000);    // iBaseDEF
                w32(96, 1000);    // iBaseRES
                w32(112, 5000);   // iBaseAtkSpd（万分比）
                p32.InsertBefore(first32, p32.Create(OpCodes.Ldstr, "V36:PATCH125"));
                p32.InsertBefore(first32, p32.Create(OpCodes.Call, mLog));
                p32.InsertBefore(first32, lSkip32);
                mFind32.Body.MaxStackSize = System.Math.Max(mFind32.Body.MaxStackSize, 8);
                Console.WriteLine("V36 heroDatabin.FindByKey hooked (DT_Count readiness gate)");
            } else Console.WriteLine("V32/V36 refs MISSING");
        }

        // ===== V37: ★ 真正的"创建前改表" —— 挂 LobbyLogic::Update()（大厅侧每帧）=====
        //   实证链条：
        //     · `ACT:cfg=125:tot=2637` → 元歌战斗 actor 的属性是**创建时读表**得到的
        //     · `WzFix.Apply` 挂在 SkillLinkerComponent::LateUpdate（对局内）→ 永远慢一帧 → 数值不生效
        //     · `SkillCD 生效` 因为 CD 是释放/显示时读表
        //     · PropertyHelper.SetValueDataArrData / heroDatabin.FindByKey **在战斗路径上都不被调用**（已实测 0 命中）
        //   → 唯一稳的窗口 = **进对局之前**。LobbyLogic 是大厅逻辑类、带参数为空的 Update，确定在对局前长期运行；
        //     此时 databin 已加载（大厅能显示英雄详情），Apply 的自证门（*(int*)p==id）也会把关。
        {
            var tLobby37 = Mod.Types.FirstOrDefault(x => x.FullName == "Assets.Scripts.GameLogic.LobbyLogic");
            int hooked37 = 0;
            if (false && tLobby37 != null) {   // ★ V40: 整块停用 —— 实测挂 LobbyLogic 后「游戏无法登录」
                var tFix37 = Mod.Types.FirstOrDefault(x => x.FullName == "Assets.Scripts.GameLogic.WzFix");
                MethodDefinition mApply37 = null;
                if (tFix37 != null) foreach (var m in tFix37.Methods) if (m.Name == "Apply") { mApply37 = m; break; }
                foreach (var m in tLobby37.Methods) {
                    bool want = (m.Name == "LateUpdate" && m.Parameters.Count == 0)
                             || (m.Name == "UpdateLogic" && m.Parameters.Count == 1)
                             || (m.Name == "OpenLobby" && m.Parameters.Count == 0);
                    if (!want || !m.HasBody) continue;
                    m.Body.InitLocals = true;
                    var p37 = m.Body.GetILProcessor();
                    var f37 = m.Body.Instructions[0];
                    if (mApply37 != null) p37.InsertBefore(f37, p37.Create(OpCodes.Call, Mod.ImportReference(mApply37)));
                    m.Body.MaxStackSize = System.Math.Max(m.Body.MaxStackSize, 8);
                    hooked37++;
                    Console.WriteLine("V37 LobbyLogic." + m.Name + " -> WzFix.Apply hooked");
                }
            }
            Console.WriteLine("V37 lobby=" + (tLobby37 != null) + " hooked=" + hooked37);
        }

        // ===== V41: actor 属性后置覆盖 —— 挂 ValueLinkerComponent::LateUpdate(int) =====
        //   依据：`SGW/stValueDataInfo`(60B) 布局已取出 —— [4]=Type [8]=BaseValue [12]=GrowValue [40]=TotalValue
        //   ValueLinkerComponent.mActorValue 就是 stValueDataInfo[]；属性索引映射为
        //     [1]=AD [2]=AP [3]=DEF [4]=RES [18]=攻速（PropertyHelper IL 实证）。
        //   只对 **IsHostCtrlActor**（玩家本体/傀儡）生效；每帧重写 BaseValue → 压过任何重算。
        {
            var tVlc41 = Mod.Types.FirstOrDefault(x => x.FullName == "Assets.Scripts.GameLogic.ValueLinkerComponent");
            MethodDefinition mVL41 = null;
            if (tVlc41 != null) foreach (var m in tVlc41.Methods)
                if (m.Name == "LateUpdate" && m.Parameters.Count == 1) { mVL41 = m; break; }
            MethodReference mHost41 = null;
            FieldReference fAp41 = null;
            {
                var tSlc41 = Mod.Types.FirstOrDefault(x => x.FullName == "Assets.Scripts.GameLogic.SkillLinkerComponent");
                var mLu41 = tSlc41 == null ? null : tSlc41.Methods.FirstOrDefault(m => m.Name == "LateUpdate" && m.Parameters.Count == 1);
                if (mLu41 != null && mLu41.HasBody)
                    foreach (var ii in mLu41.Body.Instructions) {
                        if (ii.Operand is MethodReference mr41 && mr41.Name == "IsHostCtrlActor" && mHost41 == null) mHost41 = Mod.ImportReference(mr41);
                        else if (ii.Operand is FieldReference fr41 && fr41.Name == "actorPtr" && fAp41 == null) fAp41 = Mod.ImportReference(fr41);
                    }
            }
            FieldReference fArr41 = null;
            TypeReference tSt41 = null;
            FieldReference fType41 = null, fBase41 = null;
            TypeDefinition tdSt41 = null;
            if (tVlc41 != null) foreach (var f in tVlc41.Fields)
                if (f.Name == "mActorValue") { fArr41 = Mod.ImportReference(f); tSt41 = f.FieldType.GetElementType(); break; }
            if (tSt41 != null) {
                tdSt41 = tSt41.Resolve();
                if (tdSt41 != null) foreach (var f in tdSt41.Fields) {
                    if (f.Name == "Type") fType41 = Mod.ImportReference(f);
                    else if (f.Name == "BaseValue") fBase41 = Mod.ImportReference(f);
                }
            }
            Console.WriteLine("V41 refs vlc=" + (mVL41 != null) + " host=" + (mHost41 != null) + " ap=" + (fAp41 != null)
                + " arr=" + (fArr41 != null) + " st=" + (tdSt41 != null) + " type=" + (fType41 != null) + " base=" + (fBase41 != null));
            if (mVL41 != null && mVL41.HasBody && mHost41 != null && fAp41 != null && fArr41 != null
                && fType41 != null && fBase41 != null && tSt41 != null) {
                mVL41.Body.InitLocals = true;
                var p41 = mVL41.Body.GetILProcessor();
                var vArr41 = new VariableDefinition(fArr41.FieldType);
                var vLen41 = new VariableDefinition(Mod.TypeSystem.Int32);
                var vI41 = new VariableDefinition(Mod.TypeSystem.Int32);
                var vT41 = new VariableDefinition(Mod.TypeSystem.Int32);
                mVL41.Body.Variables.Add(vArr41); mVL41.Body.Variables.Add(vLen41);
                mVL41.Body.Variables.Add(vI41); mVL41.Body.Variables.Add(vT41);
                var first41 = mVL41.Body.Instructions[0];
                var lTop41 = p41.Create(OpCodes.Nop);
                var lNext41 = p41.Create(OpCodes.Nop);
                var lDone41 = p41.Create(OpCodes.Nop);
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldarg_0));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldflda, fAp41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Call, mHost41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Brfalse, lDone41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldarg_0));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldfld, fArr41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Stloc, vArr41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldloc, vArr41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Brfalse, lDone41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldloc, vArr41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldlen));
                p41.InsertBefore(first41, p41.Create(OpCodes.Conv_I4));
                p41.InsertBefore(first41, p41.Create(OpCodes.Stloc, vLen41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldc_I4_0));
                p41.InsertBefore(first41, p41.Create(OpCodes.Stloc, vI41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Br, lTop41));
                p41.InsertBefore(first41, lTop41);
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldloc, vI41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldloc, vLen41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Bge, lDone41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldloc, vArr41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldloc, vI41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldelema, tSt41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldfld, fType41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Stloc, vT41));
                Action<int, int> case41 = (k, val) => {
                    var lNo = p41.Create(OpCodes.Nop);
                    p41.InsertBefore(first41, p41.Create(OpCodes.Ldloc, vT41));
                    p41.InsertBefore(first41, p41.Create(OpCodes.Ldc_I4, k));
                    p41.InsertBefore(first41, p41.Create(OpCodes.Bne_Un, lNo));
                    p41.InsertBefore(first41, p41.Create(OpCodes.Ldloc, vArr41));
                    p41.InsertBefore(first41, p41.Create(OpCodes.Ldloc, vI41));
                    p41.InsertBefore(first41, p41.Create(OpCodes.Ldelema, tSt41));
                    p41.InsertBefore(first41, p41.Create(OpCodes.Ldc_I4, val));
                    p41.InsertBefore(first41, p41.Create(OpCodes.Stfld, fBase41));
                    p41.InsertBefore(first41, p41.Create(OpCodes.Br, lNext41));
                    p41.InsertBefore(first41, lNo);
                };
                case41(1, 3000);    // AD
                case41(2, 3000);    // AP
                case41(3, 1000);    // DEF
                case41(4, 1000);    // RES
                case41(18, 5000);   // 攻速（万分比 = 50%）
                p41.InsertBefore(first41, lNext41);
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldloc, vI41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Ldc_I4_1));
                p41.InsertBefore(first41, p41.Create(OpCodes.Add));
                p41.InsertBefore(first41, p41.Create(OpCodes.Stloc, vI41));
                p41.InsertBefore(first41, p41.Create(OpCodes.Br, lTop41));
                p41.InsertBefore(first41, lDone41);
                mVL41.Body.MaxStackSize = System.Math.Max(mVL41.Body.MaxStackSize, 8);
                Console.WriteLine("V41 ValueLinkerComponent.LateUpdate hooked (host actor prop override)");
            } else Console.WriteLine("V41 refs MISSING");
        }

        // ===== V43: 抢"首场"窗口 —— 挂 BattleLogic::Update() / LevelLogicBase::Update() =====
        //   用户实测：v42 第 1 场不变、第 2/3 场才变 ⇒ 实际生效机制仍是"表补丁在首场之后才落"。
        //   （大厅挂点会崩；战斗内 SkillLinkerComponent 太晚）→ 改挂**战斗逻辑层**的每帧入口：
        //   BattleLogic / LevelLogicBase 在战斗装载期就跑，早于英雄 actor 的属性读取。
        //   Apply 内部自带 DT_Count(14) 就绪门 → 表没好时直接返回，不触碰任何行指针。
        {
            int hooked43 = 0;
            var tFix43 = Mod.Types.FirstOrDefault(x => x.FullName == "Assets.Scripts.GameLogic.WzFix");
            MethodDefinition mApply43 = null;
            if (tFix43 != null) foreach (var m in tFix43.Methods) if (m.Name == "Apply") { mApply43 = m; break; }
            foreach (var tn43 in new[] { "Assets.Scripts.GameLogic.BattleLogic", "Assets.Scripts.GameLogic.LevelLogicBase" }) {
                var t43 = Mod.Types.FirstOrDefault(x => x.FullName == tn43);
                if (t43 == null) { Console.WriteLine("V43 miss " + tn43); continue; }
                foreach (var m in t43.Methods) {
                    if (m.Name != "Update" || m.Parameters.Count != 0 || !m.HasBody) continue;
                    if (mApply43 == null) continue;
                    m.Body.InitLocals = true;
                    var p43 = m.Body.GetILProcessor();
                    var f43 = m.Body.Instructions[0];
                    p43.InsertBefore(f43, p43.Create(OpCodes.Call, Mod.ImportReference(mApply43)));
                    m.Body.MaxStackSize = System.Math.Max(m.Body.MaxStackSize, 8);
                    hooked43++;
                    Console.WriteLine("V43 " + tn43 + ".Update -> WzFix.Apply hooked");
                }
            }
            Console.WriteLine("V43 hooked=" + hooked43);
        }

        // P12b: 傀儡键按下时发 0CD + 无敌（战斗已 live，用户低频触发；Init 时机太早疑为 V7 崩因）
        var tJsb = Main("Assets.Scripts.GameSystem.CSkillButtonManager");
        var mJoint = tJsb.Methods.First(m => m.Name == "JointSkillButtonDown");
        var jil = mJoint.Body.GetILProcessor();
        var jfirst = mJoint.Body.Instructions[0];
        foreach (var cheatId in new[] { 2, 5 }) {   // 2=ToggleZeroCd 5=ToggleInvincible
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldstr, "CHEAT:" + cheatId));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Call, mLog));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldc_I4, cheatId));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Call, mGetInst));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldfld, fHostPid));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldc_I4_0));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldc_I4_0));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldc_I4_0));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Call, mSend));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Pop));
            Console.WriteLine("P12 cheat-send id=" + cheatId);
        }
        // P12c: 傀儡键按下即直发重召帧（UpAndClick等价，不经抬起/UI禁召；引用全偷原生）
        {
            var mUp2 = tJsb.Methods.First(m => m.Name == "JointSkillButtonUpAndClick");
            var mSujs2 = tJsb.Methods.First(m => m.Name == "SendUseJointSkill");
            FieldReference rHostActor = null;
            MethodReference rH2 = null, rO2 = null;
            OpCode ocH2 = OpCodes.Call, ocO2 = OpCodes.Callvirt;
            foreach (var ii in mSujs2.Body.Instructions)
                if (ii.Operand is FieldReference fr && fr.Name == "m_hostCtrlActor" && rHostActor == null) rHostActor = (FieldReference)ii.Operand;
            foreach (var ii in mUp2.Body.Instructions) {
                if (ii.Operand is MethodReference mr) {
                    if (mr.Name == "get_handle" && rH2 == null) { rH2 = (MethodReference)ii.Operand; ocH2 = ii.OpCode; }
                    else if (mr.Name == "get_objID" && rO2 == null) { rO2 = (MethodReference)ii.Operand; ocO2 = ii.OpCode; }
                }
            }
            if (rHostActor == null || rH2 == null || rO2 == null) throw new Exception("joint-ref-miss");
            var rSujs = Mod.ImportReference(mSujs2);
            var vH = new VariableDefinition(rHostActor.FieldType);
            mJoint.Body.Variables.Add(vH);
            mJoint.Body.InitLocals = true;
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldarg_0));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldfld, rHostActor));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Stloc, vH));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldarg_0));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldloca, vH));
            jil.InsertBefore(jfirst, jil.Create(ocH2, rH2));
            jil.InsertBefore(jfirst, jil.Create(ocO2, rO2));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Callvirt, rSujs));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldstr, "JOINT:fire"));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Call, mLog));
            Console.WriteLine("P12c joint-direct-fire hooked");
        }
        if (withDump && dm != null) {
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Ldstr, "DUMP:run"));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Call, mLog));
            jil.InsertBefore(jfirst, jil.Create(OpCodes.Call, Mod.ImportReference(dm)));
            Console.WriteLine("P13 dump-call hooked on JointSkillButtonDown");
        }
        Console.WriteLine("maxstack AddBuff before=" + ab.Body.MaxStackSize + " JointDown before=" + mJoint.Body.MaxStackSize);
        ab.Body.MaxStackSize = System.Math.Max(ab.Body.MaxStackSize, 16);
        mJoint.Body.MaxStackSize = System.Math.Max(mJoint.Body.MaxStackSize, 16);
        Console.WriteLine("maxstack AddBuff after=" + ab.Body.MaxStackSize + " JointDown after=" + mJoint.Body.MaxStackSize);
        asm.Write(Path.Combine(unp, "Assembly-CSharp.mod.dll"));
        Console.WriteLine("V5 buffid-log injected, write done");
    }

    static void Ret0(MethodDefinition m, string tag) {
        var p = m.Body.GetILProcessor();
        m.Body.Instructions.Clear();
        p.Append(p.Create(OpCodes.Ldc_I4_0));
        p.Append(p.Create(OpCodes.Ret));
        Console.WriteLine(tag + "=false");
    }
    static void Ret1(MethodDefinition m, string tag) {
        var p = m.Body.GetILProcessor();
        m.Body.Instructions.Clear();
        p.Append(p.Create(OpCodes.Ldc_I4_1));
        p.Append(p.Create(OpCodes.Ret));
        Console.WriteLine(tag + "=true");
    }
}

