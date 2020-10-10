.class public Lcom/umeng/analytics/pro/j$c;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/j;

.field private b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/j;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lcom/umeng/analytics/pro/j$c;->a:Lcom/umeng/analytics/pro/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1271
    iput-object p1, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    const/4 p1, -0x1

    .line 1273
    iput p1, p0, Lcom/umeng/analytics/pro/j$c;->c:I

    .line 1274
    iput p1, p0, Lcom/umeng/analytics/pro/j$c;->d:I

    .line 1276
    iput p1, p0, Lcom/umeng/analytics/pro/j$c;->e:I

    .line 1277
    iput p1, p0, Lcom/umeng/analytics/pro/j$c;->f:I

    return-void
.end method

.method private b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .locals 3

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 1437
    iget-object p1, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto/16 :goto_0

    .line 1433
    :cond_1
    iget-object p1, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    if-eqz p2, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    .line 1434
    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    goto :goto_0

    .line 1414
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-eqz v0, :cond_4

    .line 1416
    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    goto :goto_0

    .line 1418
    :cond_4
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p1, v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V

    goto :goto_0

    .line 1429
    :cond_5
    iget-object p1, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    .line 1430
    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1422
    :cond_7
    iget-object p1, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    .line 1423
    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    goto :goto_0

    .line 1411
    :cond_9
    iget-object p1, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p2, :cond_a

    goto :goto_0

    :cond_a
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto :goto_0

    .line 1426
    :cond_b
    iget-object p1, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    if-eqz p2, :cond_c

    goto :goto_0

    :cond_c
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;-><init>()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .line 1308
    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_1

    const v1, 0x15180

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_1
    :goto_0
    return p1
.end method

.method public a()V
    .locals 2

    const/4 v0, -0x1

    .line 1284
    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/umeng/analytics/pro/j$c;->a(II)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 1286
    aget v1, v0, v1

    iput v1, p0, Lcom/umeng/analytics/pro/j$c;->c:I

    const/4 v1, 0x1

    .line 1287
    aget v0, v0, v1

    iput v0, p0, Lcom/umeng/analytics/pro/j$c;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(II)[I
    .locals 7

    .line 1293
    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "-1"

    const-string v2, "report_policy"

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1294
    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object v2

    const-string v3, "report_interval"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 1295
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x5a

    if-eq v1, v5, :cond_2

    if-lt v1, p1, :cond_2

    const p2, 0x15180

    if-le v1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 1303
    :cond_2
    :goto_0
    new-array p2, v4, [I

    aput v0, p2, v3

    mul-int/lit16 p1, p1, 0x3e8

    aput p1, p2, v2

    return-object p2

    .line 1296
    :cond_3
    :goto_1
    new-array v0, v4, [I

    aput p1, v0, v3

    aput p2, v0, v2

    return-object v0
.end method

.method protected b()V
    .locals 9

    .line 1320
    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 1323
    iget-object v1, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v6, v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_5

    .line 1327
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "-1"

    const-string v6, "integrated_test"

    invoke-static {v0, v6, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 1329
    :goto_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v0, :cond_4

    .line 1330
    sget-boolean v6, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-nez v6, :cond_4

    .line 1331
    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object v6, Lcom/umeng/analytics/pro/h;->L:Ljava/lang/String;

    const-string v7, "\\|"

    invoke-static {v6, v2, v7, v5, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1335
    :cond_4
    sget-boolean v6, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    .line 1339
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_5

    .line 1340
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$c;->a:Lcom/umeng/analytics/pro/j;

    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Lcom/umeng/analytics/pro/j;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/umeng/analytics/pro/j$c;->a:Lcom/umeng/analytics/pro/j;

    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Lcom/umeng/analytics/pro/j;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "RPT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1345
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$c;->a:Lcom/umeng/analytics/pro/j;

    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Lcom/umeng/analytics/pro/j;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_9

    .line 1347
    invoke-static {}, Lcom/umeng/analytics/pro/j;->e()Landroid/content/Context;

    move-result-object v0

    const-string v7, "test_report_interval"

    invoke-static {v0, v7, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1346
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    const v0, 0x15f90

    .line 1350
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/j$c;->a(I)I

    move-result v0

    goto :goto_4

    .line 1351
    :cond_7
    iget v0, p0, Lcom/umeng/analytics/pro/j$c;->d:I

    if-lez v0, :cond_8

    goto :goto_4

    .line 1354
    :cond_8
    iget v0, p0, Lcom/umeng/analytics/pro/j$c;->f:I

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    .line 1357
    :goto_4
    iget-object v1, p0, Lcom/umeng/analytics/pro/j$c;->a:Lcom/umeng/analytics/pro/j;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Lcom/umeng/analytics/pro/j;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/j$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_5

    .line 1359
    :cond_a
    iget v0, p0, Lcom/umeng/analytics/pro/j$c;->e:I

    .line 1360
    iget v1, p0, Lcom/umeng/analytics/pro/j$c;->f:I

    .line 1361
    iget v7, p0, Lcom/umeng/analytics/pro/j$c;->c:I

    if-eq v7, v6, :cond_b

    .line 1363
    iget v1, p0, Lcom/umeng/analytics/pro/j$c;->d:I

    move v0, v7

    .line 1365
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/pro/j$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1368
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Report policy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickRT"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1372
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_c

    .line 1374
    :try_start_1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object v0, Lcom/umeng/analytics/pro/h;->J:Ljava/lang/String;

    invoke-static {v0, v2, v1, v5, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    .line 1375
    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-eqz v0, :cond_d

    .line 1377
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->getReportInterval()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    .line 1378
    div-long/2addr v5, v7

    .line 1379
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v5, "@"

    .line 1380
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 1381
    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v3

    .line 1382
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object v0, Lcom/umeng/analytics/pro/h;->K:Ljava/lang/String;

    invoke-static {v0, v2, v1, v5, v4}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    .line 1383
    :cond_d
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-eqz v0, :cond_e

    .line 1385
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object v0, Lcom/umeng/analytics/pro/h;->M:Ljava/lang/String;

    invoke-static {v0, v2, v1, v5, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_e
    :goto_6
    return-void
.end method

.method public c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .locals 1

    .line 1395
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/j$c;->b()V

    .line 1396
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return-object v0
.end method
