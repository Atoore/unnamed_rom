.class public Landroid/webkit/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PluginManager"

.field public static final PLUGIN_ACTION:Ljava/lang/String; = "android.webkit.PLUGIN"

.field public static final PLUGIN_PERMISSION:Ljava/lang/String; = "android.webkit.permission.PLUGIN"

.field private static final PLUGIN_SYSTEM_LIB:Ljava/lang/String; = "/system/lib/plugins/"

.field private static final PLUGIN_TYPE:Ljava/lang/String; = "type"

.field private static final SIGNATURES:[Landroid/content/pm/Signature; = null

.field private static final SIGNATURE_1:Ljava/lang/String; = "308204c5308203ada003020102020900d7cb412f75f4887e300d06092a864886f70d010105050030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564301e170d3039313030313030323331345a170d3337303231363030323331345a30819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f726174656430820120300d06092a864886f70d01010105000382010d0030820108028201010099724f3e05bbd78843794f357776e04b340e13cb1c9ccb3044865180d7d8fec8166c5bbd876da8b80aa71eb6ba3d4d3455c9a8de162d24a25c4c1cd04c9523affd06a279fc8f0d018f242486bdbb2dbfbf6fcb21ed567879091928b876f7ccebc7bccef157366ebe74e33ae1d7e9373091adab8327482154afc0693a549522f8c796dd84d16e24bb221f5dbb809ca56dd2b6e799c5fa06b6d9c5c09ada54ea4c5db1523a9794ed22a3889e5e05b29f8ee0a8d61efe07ae28f65dece2ff7edc5b1416d7c7aad7f0d35e8f4a4b964dbf50ae9aa6d620157770d974131b3e7e3abd6d163d65758e2f0822db9c88598b9db6263d963d13942c91fc5efe34fc1e06e3020103a382010630820102301d0603551d0e041604145af418e419a639e1657db960996364a37ef20d403081d20603551d230481ca3081c780145af418e419a639e1657db960996364a37ef20d40a181a3a481a030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564820900d7cb412f75f4887e300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010076c2a11fe303359689c2ebc7b2c398eff8c3f9ad545cdbac75df63bf7b5395b6988d1842d6aa1556d595b5692e08224d667a4c9c438f05e74906c53dd8016dde7004068866f01846365efd146e9bfaa48c9ecf657f87b97c757da11f225c4a24177bf2d7188e6cce2a70a1e8a841a14471eb51457398b8a0addd8b6c8c1538ca8f1e40b4d8b960009ea22c188d28924813d2c0b4a4d334b7cf05507e1fcf0a06fe946c7ffc435e173af6fc3e3400643710acc806f830a14788291d46f2feed9fb5c70423ca747ed1572d752894ac1f19f93989766308579393fabb43649aa8806a313b1ab9a50922a44c2467b9062037f2da0d484d9ffd8fe628eeea629ba637"

.field private static final SIGNATURE_LGUP:Ljava/lang/String; = "3082019d30820106a00302010202044e097266300d06092a864886f70d010105050030123110300e060355040313074c4755506c75733020170d3131303632383036313931385a180f32353131303232373036313931385a30123110300e060355040313074c4755506c757330819f300d06092a864886f70d010101050003818d0030818902818100979cc341b601da226edad24800c5f813fd3f42808e8adab4cf776344ffc55b50a9ef8c34c4249642fb9f84b48465cee682ae2cfa8cbbcc43950fad8c1b37ffff3a64c828ad5a96f390ec5a85abe354954607d34222d5cee3b36f68f81da2036be4a7850ae40adf69500dd587b6349bba02281298fc4d2f647afce917c2c3cccf0203010001300d06092a864886f70d010105050003818100353ce89d78ccb69429b2417263b382bac4600f6ae44f4095c5862ddd94dd3fd47e741376741a17a4f41ed8b3730b51f81c7214b355efee181828bc1b236e44cb7a3d83bdf0486d9955789779eb1dcb800194b2ab18a4ff6c14a1d21f16a73e694488e57cc4f06ae1dc37154da5c8d8f4bc3b06eb4f5d8c9b9afa63010c72a7fa"

.field private static final TYPE_NATIVE:Ljava/lang/String; = "native"

.field private static mInstance:Landroid/webkit/PluginManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageInfoCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308204c5308203ada003020102020900d7cb412f75f4887e300d06092a864886f70d010105050030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564301e170d3039313030313030323331345a170d3337303231363030323331345a30819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f726174656430820120300d06092a864886f70d01010105000382010d0030820108028201010099724f3e05bbd78843794f357776e04b340e13cb1c9ccb3044865180d7d8fec8166c5bbd876da8b80aa71eb6ba3d4d3455c9a8de162d24a25c4c1cd04c9523affd06a279fc8f0d018f242486bdbb2dbfbf6fcb21ed567879091928b876f7ccebc7bccef157366ebe74e33ae1d7e9373091adab8327482154afc0693a549522f8c796dd84d16e24bb221f5dbb809ca56dd2b6e799c5fa06b6d9c5c09ada54ea4c5db1523a9794ed22a3889e5e05b29f8ee0a8d61efe07ae28f65dece2ff7edc5b1416d7c7aad7f0d35e8f4a4b964dbf50ae9aa6d620157770d974131b3e7e3abd6d163d65758e2f0822db9c88598b9db6263d963d13942c91fc5efe34fc1e06e3020103a382010630820102301d0603551d0e041604145af418e419a639e1657db960996364a37ef20d403081d20603551d230481ca3081c780145af418e419a639e1657db960996364a37ef20d40a181a3a481a030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564820900d7cb412f75f4887e300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010076c2a11fe303359689c2ebc7b2c398eff8c3f9ad545cdbac75df63bf7b5395b6988d1842d6aa1556d595b5692e08224d667a4c9c438f05e74906c53dd8016dde7004068866f01846365efd146e9bfaa48c9ecf657f87b97c757da11f225c4a24177bf2d7188e6cce2a70a1e8a841a14471eb51457398b8a0addd8b6c8c1538ca8f1e40b4d8b960009ea22c188d28924813d2c0b4a4d334b7cf05507e1fcf0a06fe946c7ffc435e173af6fc3e3400643710acc806f830a14788291d46f2feed9fb5c70423ca747ed1572d752894ac1f19f93989766308579393fabb43649aa8806a313b1ab9a50922a44c2467b9062037f2da0d484d9ffd8fe628eeea629ba637"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "3082019d30820106a00302010202044e097266300d06092a864886f70d010105050030123110300e060355040313074c4755506c75733020170d3131303632383036313931385a180f32353131303232373036313931385a30123110300e060355040313074c4755506c757330819f300d06092a864886f70d010101050003818d0030818902818100979cc341b601da226edad24800c5f813fd3f42808e8adab4cf776344ffc55b50a9ef8c34c4249642fb9f84b48465cee682ae2cfa8cbbcc43950fad8c1b37ffff3a64c828ad5a96f390ec5a85abe354954607d34222d5cee3b36f68f81da2036be4a7850ae40adf69500dd587b6349bba02281298fc4d2f647afce917c2c3cccf0203010001300d06092a864886f70d010105050003818100353ce89d78ccb69429b2417263b382bac4600f6ae44f4095c5862ddd94dd3fd47e741376741a17a4f41ed8b3730b51f81c7214b355efee181828bc1b236e44cb7a3d83bdf0486d9955789779eb1dcb800194b2ab18a4ff6c14a1d21f16a73e694488e57cc4f06ae1dc37154da5c8d8f4bc3b06eb4f5d8c9b9afa63010c72a7fa"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/PluginManager;->SIGNATURES:[Landroid/content/pm/Signature;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    .line 89
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;
    .registers 4
    .parameter "context"

    .prologue
    .line 92
    const-class v0, Landroid/webkit/PluginManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;

    if-nez v1, :cond_1f

    .line 93
    if-nez p0, :cond_14

    .line 94
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "First call to PluginManager need a valid context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    .line 92
    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1

    .line 97
    :cond_14
    :try_start_14
    new-instance v1, Landroid/webkit/PluginManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/PluginManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;

    .line 99
    :cond_1f
    sget-object v1, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_11

    monitor-exit v0

    return-object v1
.end method


# virtual methods
.method getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v2, p0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 276
    .local v1, pluginContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 277
    .local v0, pluginCL:Ljava/lang/ClassLoader;
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method getPluginDirectories()[Ljava/lang/String;
    .registers 32

    .prologue
    .line 117
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v7, directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 119
    .local v21, pm:Landroid/content/pm/PackageManager;
    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.webkit.PLUGIN"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x84

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    .line 122
    .local v20, plugins:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 125
    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 127
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_36
    :goto_36
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_23f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 130
    .local v13, info:Landroid/content/pm/ResolveInfo;
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    .line 131
    .local v22, serviceInfo:Landroid/content/pm/ServiceInfo;
    if-nez v22, :cond_54

    .line 132
    const-string v28, "PluginManager"

    const-string v29, "Ignore bad plugin"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 240
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    .end local v22           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :catchall_51
    move-exception v28

    monitor-exit v27
    :try_end_53
    .catchall {:try_start_29 .. :try_end_53} :catchall_51

    throw v28

    .line 139
    .restart local v13       #info:Landroid/content/pm/ResolveInfo;
    .restart local v22       #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_54
    :try_start_54
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x1040

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_54 .. :try_end_65} :catch_117

    move-result-object v18

    .line 146
    .local v18, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v18, :cond_36

    .line 156
    :try_start_68
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/lib"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, directory:Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v3, v0

    .line 158
    .local v3, appFlags:I
    const/16 v26, 0x81

    .line 161
    .local v26, updatedSystemFlags:I
    move v0, v3

    and-int/lit16 v0, v0, 0x81

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_ba

    .line 162
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "/system/lib/plugins/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 166
    :cond_ba
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 167
    .local v16, permissions:[Ljava/lang/String;
    if-eqz v16, :cond_36

    .line 170
    const/4 v15, 0x0

    .line 171
    .local v15, permissionOk:Z
    move-object/from16 v4, v16

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_c7
    if-ge v12, v14, :cond_d8

    aget-object v17, v4, v12

    .line 172
    .local v17, permit:Ljava/lang/String;
    const-string v28, "android.webkit.permission.PLUGIN"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13a

    .line 173
    const/4 v15, 0x1

    .line 177
    .end local v17           #permit:Ljava/lang/String;
    :cond_d8
    if-eqz v15, :cond_36

    .line 182
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    .line 183
    .local v25, signatures:[Landroid/content/pm/Signature;
    if-eqz v25, :cond_36

    .line 188
    const-string/jumbo v28, "ro.secure"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_142

    .line 191
    const/16 v24, 0x0

    .line 192
    .local v24, signatureMatch:Z
    move-object/from16 v4, v25

    .local v4, arr$:[Landroid/content/pm/Signature;
    array-length v14, v4

    const/4 v12, 0x0

    :goto_f3
    if-ge v12, v14, :cond_140

    aget-object v23, v4, v12

    .line 193
    .local v23, signature:Landroid/content/pm/Signature;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_f8
    sget-object v28, Landroid/webkit/PluginManager;->SIGNATURES:[Landroid/content/pm/Signature;

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move v0, v10

    move/from16 v1, v28

    if-ge v0, v1, :cond_114

    .line 194
    sget-object v28, Landroid/webkit/PluginManager;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v28, v28, v10

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13d

    .line 195
    const/16 v24, 0x1

    .line 192
    :cond_114
    add-int/lit8 v12, v12, 0x1

    goto :goto_f3

    .line 142
    .end local v3           #appFlags:I
    .end local v4           #arr$:[Landroid/content/pm/Signature;
    .end local v8           #directory:Ljava/lang/String;
    .end local v10           #i:I
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v15           #permissionOk:Z
    .end local v16           #permissions:[Ljava/lang/String;
    .end local v18           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v23           #signature:Landroid/content/pm/Signature;
    .end local v24           #signatureMatch:Z
    .end local v25           #signatures:[Landroid/content/pm/Signature;
    .end local v26           #updatedSystemFlags:I
    :catch_117
    move-exception v28

    move-object/from16 v9, v28

    .line 143
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v28, "PluginManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Can\'t find plugin: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 171
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #appFlags:I
    .local v4, arr$:[Ljava/lang/String;
    .restart local v8       #directory:Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #permissionOk:Z
    .restart local v16       #permissions:[Ljava/lang/String;
    .restart local v17       #permit:Ljava/lang/String;
    .restart local v18       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v26       #updatedSystemFlags:I
    :cond_13a
    add-int/lit8 v12, v12, 0x1

    goto :goto_c7

    .line 193
    .end local v17           #permit:Ljava/lang/String;
    .local v4, arr$:[Landroid/content/pm/Signature;
    .restart local v10       #i:I
    .restart local v23       #signature:Landroid/content/pm/Signature;
    .restart local v24       #signatureMatch:Z
    .restart local v25       #signatures:[Landroid/content/pm/Signature;
    :cond_13d
    add-int/lit8 v10, v10, 0x1

    goto :goto_f8

    .line 200
    .end local v10           #i:I
    .end local v23           #signature:Landroid/content/pm/Signature;
    :cond_140
    if-eqz v24, :cond_36

    .line 206
    .end local v4           #arr$:[Landroid/content/pm/Signature;
    .end local v24           #signatureMatch:Z
    :cond_142
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    if-nez v28, :cond_170

    .line 207
    const-string v28, "PluginManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "The plugin \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\' has no type defined"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 211
    :cond_170
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string/jumbo v29, "type"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 212
    .local v19, pluginType:Ljava/lang/String;
    const-string/jumbo v28, "native"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1a8

    .line 213
    const-string v28, "PluginManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unrecognized plugin type: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a6
    .catchall {:try_start_68 .. :try_end_1a6} :catchall_51

    goto/16 :goto_36

    .line 218
    :cond_1a8
    :try_start_1a8
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 221
    .local v6, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 223
    .local v5, classFound:Z
    if-nez v5, :cond_22d

    .line 224
    const-string v28, "PluginManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "The plugin\'s class\' "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\' does not extend the appropriate class."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e5
    .catchall {:try_start_1a8 .. :try_end_1e5} :catchall_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a8 .. :try_end_1e5} :catch_1e7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a8 .. :try_end_1e5} :catch_20a

    goto/16 :goto_36

    .line 228
    .end local v5           #classFound:Z
    .end local v6           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1e7
    move-exception v28

    move-object/from16 v9, v28

    .line 229
    .restart local v9       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1ea
    const-string v28, "PluginManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Can\'t find plugin: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 231
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_20a
    move-exception v28

    move-object/from16 v9, v28

    .line 232
    .local v9, e:Ljava/lang/ClassNotFoundException;
    const-string v28, "PluginManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Can\'t find plugin\'s class: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 237
    .end local v9           #e:Ljava/lang/ClassNotFoundException;
    .restart local v5       #classFound:Z
    .restart local v6       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_22d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_36

    .line 240
    .end local v3           #appFlags:I
    .end local v5           #classFound:Z
    .end local v6           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #directory:Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    .end local v14           #len$:I
    .end local v15           #permissionOk:Z
    .end local v16           #permissions:[Ljava/lang/String;
    .end local v18           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v19           #pluginType:Ljava/lang/String;
    .end local v22           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v25           #signatures:[Landroid/content/pm/Signature;
    .end local v26           #updatedSystemFlags:I
    :cond_23f
    monitor-exit v27
    :try_end_240
    .catchall {:try_start_1ea .. :try_end_240} :catchall_51

    .line 242
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    move-object v0, v7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method getPluginSharedDataDirectory()Ljava/lang/String;
    .registers 4

    .prologue
    .line 267
    iget-object v0, p0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "plugins"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "pluginLib"

    .prologue
    const/4 v4, 0x0

    .line 249
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move-object v2, v4

    .line 263
    :goto_a
    return-object v2

    .line 254
    :cond_b
    iget-object v2, p0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    monitor-enter v2

    .line 255
    :try_start_e
    iget-object v3, p0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 256
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 257
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    monitor-exit v2

    move-object v2, v3

    goto :goto_a

    .line 260
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_2d
    monitor-exit v2

    move-object v2, v4

    .line 263
    goto :goto_a

    .line 260
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_30
    move-exception v3

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_30

    throw v3
.end method

.method public refreshPlugins(Z)V
    .registers 5
    .parameter "reloadOpenPages"

    .prologue
    .line 110
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/16 v1, 0x64

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method
