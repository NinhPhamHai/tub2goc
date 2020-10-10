.class Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;
.super Ljava/lang/Object;
.source "SubtitleConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubtitleFrame"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field public text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 347
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;)Z
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->isEmptyText()Z

    move-result p0

    return p0
.end method

.method private isEmptyText()Z
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 354
    :goto_0
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 355
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
