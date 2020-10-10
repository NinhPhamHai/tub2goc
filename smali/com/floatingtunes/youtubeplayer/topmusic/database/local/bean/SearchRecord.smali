.class public Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;
.super Ljava/lang/Object;
.source "SearchRecord.java"


# instance fields
.field private record:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;->record:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 36
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;->record:Ljava/lang/String;

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;->getRecord()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 39
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getRecord()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;->record:Ljava/lang/String;

    return-object v0
.end method
