using System;
using System.IO;
using System.Linq;
using Mono.Cecil;
using Mono.Cecil.Cil;

static class ILdump
{
    public static void Main(string[] args)
    {
        var unp = @"D:\APK-Reverse\projects\WZRY\_unpacked";
        var res = new DefaultAssemblyResolver();
        res.AddSearchDirectory(unp);
        res.AddSearchDirectory(@"D:\APK-Reverse\tools\_unified\bin");
        var rp = new ReaderParameters { AssemblyResolver = res };
        // NOTE: apktool tree dll is currently patched; original bottom is Assembly-CSharp.dll (10113024)
        var dllPath = Path.Combine(unp, "Assembly-CSharp.dll");
        if (args.Length > 0 && args[0].StartsWith("file=")) { dllPath = args[0].Substring(5); args = args.Skip(1).ToArray(); }
        var asm = AssemblyDefinition.ReadAssembly(dllPath, rp);
        var mod = asm.MainModule;
        System.Func<string, TypeDefinition> FindT = null;
        FindT = (full) => {
            System.Func<TypeDefinition, TypeDefinition> rec = null;
            rec = (t) => {
                if (t.FullName == full) return t;
                foreach (var n in t.NestedTypes) { var r = rec(n); if (r != null) return r; }
                return null;
            };
            foreach (var t in mod.Types) { var r = rec(t); if (r != null) return r; }
            return null;
        };
        if (args.Length > 0 && args[0].StartsWith("dump-all:")) {
            var outDir = args[0].Substring("dump-all:".Length);
            Directory.CreateDirectory(outDir);
            int nFiles = 0, nTypes = 0;
            foreach (var td in mod.Types) {
                nTypes++;
                var safe = td.FullName.Replace("/", "+").Replace("<", "_").Replace(">", "_").Replace("`", "_").Replace("|", "_").Replace(":", "_");
                var sb = new System.Text.StringBuilder();
                sb.AppendLine($"// TYPE {td.FullName}  base={td.BaseType?.FullName}  attrs={td.Attributes}");
                foreach (var f in td.Fields) {
                    string cv = "";
                    if (f.HasConstant && f.Constant != null) cv = " = " + f.Constant;
                    sb.AppendLine($"  FIELD {f.FieldType.FullName} {f.Name}{cv}");
                }
                foreach (var p in td.Properties) sb.AppendLine($"  PROP {p.PropertyType.FullName} {p.Name}");
                foreach (var m in td.Methods) {
                    sb.AppendLine($"== {m.ReturnType.FullName} {m.Name}({string.Join(", ", m.Parameters.Select(pp => pp.ParameterType.FullName + " " + pp.Name))}) attrs={m.Attributes} maxstack={(m.HasBody ? m.Body.MaxStackSize : -1)}");
                    if (!m.HasBody) { sb.AppendLine("   <no body>"); continue; }
                    foreach (var ins in m.Body.Instructions) {
                        var op = ins.Operand; string ops = "";
                        if (op is Mono.Cecil.MethodReference mr) ops = mr.FullName;
                        else if (op is Mono.Cecil.FieldReference fr) ops = fr.DeclaringType.FullName + "::" + fr.Name;
                        else if (op is Mono.Cecil.TypeReference tr) ops = tr.FullName;
                        else if (op != null) ops = op.ToString();
                        sb.AppendLine($"   {ins.Offset:X4} {ins.OpCode} {ops}");
                    }
                }
                if (td.HasNestedTypes)
                    foreach (var nt in td.NestedTypes) sb.AppendLine($"  NESTED {nt.FullName}");
                File.WriteAllText(Path.Combine(outDir, safe + ".il.txt"), sb.ToString());
                nFiles++;
            }
            Console.WriteLine($"dump-all done types={nTypes} files={nFiles} out={outDir}");
            return;
        }
        if (args.Length > 0 && args[0] == "list-dtids") {
            System.Action<TypeDefinition> walk = null;
            walk = (td) => {
                var fk = td.Methods.FirstOrDefault(m => m.Name == "FindByKey" && m.HasBody);
                if (fk != null) {
                    foreach (var ii in fk.Body.Instructions) {
                        if (ii.OpCode == OpCodes.Ldc_I4_S || ii.OpCode == OpCodes.Ldc_I4 || ii.OpCode == OpCodes.Ldc_I4_M1
                            || ii.OpCode == OpCodes.Ldc_I4_0 || ii.OpCode == OpCodes.Ldc_I4_1 || ii.OpCode == OpCodes.Ldc_I4_2
                            || ii.OpCode == OpCodes.Ldc_I4_3 || ii.OpCode == OpCodes.Ldc_I4_4 || ii.OpCode == OpCodes.Ldc_I4_5
                            || ii.OpCode == OpCodes.Ldc_I4_6 || ii.OpCode == OpCodes.Ldc_I4_7 || ii.OpCode == OpCodes.Ldc_I4_8) {
                            int v = -999;
                            if (ii.Operand != null) v = Convert.ToInt32(ii.Operand);
                            else {
                                var s = ii.OpCode.ToString();
                                var idx = s.LastIndexOf('.');
                                if (idx > 0 && idx + 1 < s.Length) {
                                    var tail = s.Substring(idx + 1);
                                    if (tail == "m1") v = -1; else int.TryParse(tail, out v);
                                }
                            }
                            Console.WriteLine($"{td.FullName} | tableId={v}");
                            break;
                        }
                    }
                }
                foreach (var n in td.NestedTypes) walk(n);
            };
            foreach (var t in mod.Types) walk(t);
            return;
        }
        if (args.Length > 0 && args[0].StartsWith("dump-type:")) {
            var tn = args[0].Substring("dump-type:".Length);
            var td = FindT(tn);
            if (td == null) { Console.WriteLine($"TYPE-MISS {tn}"); return; }
            Console.WriteLine($"== {tn} size-fields={td.Fields.Count} base={td.BaseType?.FullName} ==");
            foreach (var f in td.Fields) {
                string cv = "";
                if (f.HasConstant && f.Constant != null) cv = " = " + f.Constant;
                Console.WriteLine($"  {f.FieldType.FullName} {f.Name}{cv} offset={f.Offset}");
            }
            foreach (var p in td.Properties) Console.WriteLine($"  PROP {p.PropertyType.FullName} {p.Name}");
            foreach (var nt in td.NestedTypes) Console.WriteLine($"  NESTED {nt.FullName}");
            return;
        }
        if (args.Length > 0 && args[0].StartsWith("dump-type-il:")) {
            var tn = args[0].Substring("dump-type-il:".Length);
            var td = FindT(tn);
            if (td == null) { Console.WriteLine($"TYPE-MISS {tn}"); return; }
            foreach (var m in td.Methods) {
                Console.WriteLine($"== {tn}::{m.Name} ({string.Join(",", m.Parameters.Select(p => p.ParameterType.FullName))}) ==");
                if (!m.HasBody) { Console.WriteLine("  <no body>"); continue; }
                foreach (var ins in m.Body.Instructions) {
                    var op = ins.Operand; string ops = "";
                    if (op is Mono.Cecil.MethodReference mr) ops = mr.FullName;
                    else if (op is Mono.Cecil.FieldReference fr) ops = fr.DeclaringType.FullName + "::" + fr.Name;
                    else if (op is Mono.Cecil.TypeReference tr) ops = tr.FullName;
                    else if (op != null) ops = op.ToString();
                    Console.WriteLine($"  {ins.Offset:X4} {ins.OpCode} {ops}");
                }
            }
            return;
        }
        if (args.Length > 0 && args[0].StartsWith("dump-field:"))
        {
            var want = args[0].Substring("dump-field:".Length);
            var idx = want.LastIndexOf("::");
            var tn = want.Substring(0, idx); var fn = want.Substring(idx + 2);
            var td = FindT(tn);
            TypeDefinition t = td;
            while (t != null) {
                foreach (var f in t.Fields)
                    if (f.Name == fn) Console.WriteLine($"{t.FullName}::{f.Name} : {f.FieldType.FullName}");
                try { t = t.BaseType?.Resolve(); } catch { t = null; }
            }
            return;
        }
        if (args.Length > 0 && (args[0].StartsWith("scan-field:") || args[0].StartsWith("scan-method:")))
        {
            bool isF = args[0].StartsWith("scan-field:");
            var want = args[0].Substring(args[0].IndexOf(':') + 1);
            foreach (var td in mod.Types)
                foreach (var m in td.Methods)
                {
                    if (!m.HasBody) continue;
                    foreach (var ins in m.Body.Instructions)
                    {
                        string key = "";
                        if (isF && ins.Operand is FieldReference fr) key = fr.DeclaringType.FullName + "::" + fr.Name;
                        else if (!isF && ins.Operand is Mono.Cecil.MethodReference mr) key = mr.DeclaringType.FullName + "::" + mr.Name;
                        if (key == want)
                        { Console.WriteLine($"{td.FullName}::{m.Name} @{ins.Offset:X4} {ins.OpCode}"); break; }
                    }
                }
            return;
        }
        string[] targets = args.Length > 0 ? args : new[] {
            "Assets.Scripts.GameSystem.CSkillButtonManager::RefreshJointSkillBtnStatus",
            "Assets.Scripts.GameSystem.CSkillButtonManager::SetJointSkillBtnStatus",
            "Assets.Scripts.GameSystem.CSkillButtonManager::OnUpdateJointSkillBtnRemainingTime",
            "Assets.Scripts.GameSystem.CSkillButtonManager::SendUseJointSkill",
            "Assets.Scripts.GameSystem.CSkillButtonManager::JointSkillButtonDown",
            "Assets.Scripts.GameLogic.SkillSlotLinker::InitSkillSlot",
            "Assets.Scripts.GameLogic.BuffLinkerComponent::AddBuff",
            "Assets.Scripts.GameLogic.BuffLinkerComponent::RemoveBuff",
        };
        foreach (var t in targets)
        {
            var idx = t.LastIndexOf("::");
            var tn = t.Substring(0, idx); var mn = t.Substring(idx + 2);
            var td = FindT(tn);
            if (td == null) { Console.WriteLine($"TYPE-MISS {tn}"); continue; }
            foreach (var m in td.Methods.Where(x => x.Name == mn))
            {
                Console.WriteLine($"== {t} ({string.Join(",", m.Parameters.Select(p => p.ParameterType.FullName))}) ==");
                if (!m.HasBody) { Console.WriteLine("  <no body>"); continue; }
                foreach (var ins in m.Body.Instructions)
                {
                    var op = ins.Operand;
                    string ops = "";
                    if (op is Mono.Cecil.MethodReference mr) ops = mr.FullName;
                    else if (op is Mono.Cecil.FieldReference fr) ops = fr.DeclaringType.FullName + "::" + fr.Name;
                    else if (op is Mono.Cecil.TypeReference tr) ops = tr.FullName;
                    else if (op != null) ops = op.ToString();
                    Console.WriteLine($"  {ins.Offset:X4} {ins.OpCode} {ops}");
                }
            }
        }
    }
}
