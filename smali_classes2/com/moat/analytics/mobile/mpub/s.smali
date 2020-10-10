.class Lcom/moat/analytics/mobile/mpub/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/s$b;,
        Lcom/moat/analytics/mobile/mpub/s$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/moat/analytics/mobile/mpub/s$a;

.field private static c:Lcom/moat/analytics/mobile/mpub/s$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()D
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->h()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/m;->a(Ljava/lang/Exception;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/moat/analytics/mobile/mpub/s;->a:Ljava/lang/String;

    return-object p0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/mpub/s$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/mpub/s$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/m;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static c()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/mpub/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/k;

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/k;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static d()Lcom/moat/analytics/mobile/mpub/s$a;
    .locals 2

    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->b:Lcom/moat/analytics/mobile/mpub/s$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/s$a;->a(Lcom/moat/analytics/mobile/mpub/s$a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/mpub/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/mpub/s$a;-><init>(Lcom/moat/analytics/mobile/mpub/s$1;)V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/s;->b:Lcom/moat/analytics/mobile/mpub/s$a;

    :cond_1
    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->b:Lcom/moat/analytics/mobile/mpub/s$a;

    return-object v0
.end method

.method static e()Lcom/moat/analytics/mobile/mpub/s$b;
    .locals 2

    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->c:Lcom/moat/analytics/mobile/mpub/s$b;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/s$b;->f:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/mpub/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/mpub/s$b;-><init>(Lcom/moat/analytics/mobile/mpub/s$1;)V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/s;->c:Lcom/moat/analytics/mobile/mpub/s$b;

    :cond_1
    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->c:Lcom/moat/analytics/mobile/mpub/s$b;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->i()Z

    move-result v0

    return v0
.end method

.method private static h()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/m;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static i()Z
    .locals 5

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const-string v4, "adb_enabled"

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
