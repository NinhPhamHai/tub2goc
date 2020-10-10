.class public Lcom/floatingtunes/youtubeplayer/topmusic/util/SuperPrefs;
.super Ljava/lang/Object;
.source "SuperPrefs.java"


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_shared_services_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/util/SuperPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/util/SuperPrefs;
    .locals 1

    .line 33
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/SuperPrefs;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/SuperPrefs;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/util/SuperPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
