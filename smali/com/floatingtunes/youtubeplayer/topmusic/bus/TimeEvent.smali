.class public Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;
.super Ljava/lang/Object;
.source "TimeEvent.java"


# instance fields
.field private current:Ljava/lang/String;

.field private total:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;->current:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;->total:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;->current:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;->total:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
