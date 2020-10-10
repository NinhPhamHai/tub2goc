.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;
.super Ljava/lang/Object;
.source "StoredFileHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient context:Landroid/content/Context;

.field private transient docFile:Landroidx/documentfile/provider/DocumentFile;

.field private transient docTree:Landroidx/documentfile/provider/DocumentFile;

.field private transient ioFile:Ljava/io/File;

.field protected source:Ljava/lang/String;

.field private sourceTree:Ljava/lang/String;

.field private srcName:Ljava/lang/String;

.field private srcType:Ljava/lang/String;

.field protected tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->tag:Ljava/lang/String;

    .line 95
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 97
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    const-string v0, "file"

    if-eqz p4, :cond_3

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p1, p3}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 104
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->context:Landroid/content/Context;

    .line 106
    invoke-virtual {p3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_1

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    return-void

    .line 110
    :cond_1
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 111
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->takePermissionSAF()V

    goto :goto_1

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SAF not available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_3
    :goto_0
    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-static {p4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    :goto_1
    if-eqz p2, :cond_5

    .line 116
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 117
    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    .line 119
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    .line 53
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->context:Landroid/content/Context;

    if-eqz p5, :cond_1

    .line 59
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1, p4, p3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create the file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    invoke-direct {p0, p1, p4, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 65
    :goto_0
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 67
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, "application/octet-stream"

    .line 44
    :cond_0
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 47
    :cond_1
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->tag:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    .line 77
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 78
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The filename is already in use by non-file entity and cannot overwrite it"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_1
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 85
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void

    .line 82
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create the file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {p1, v0, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->findFileSAFHelper(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 362
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 364
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Directory with the same name found but cannot delete"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_4

    .line 369
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string p2, "application/octet-stream"

    :cond_2
    invoke-virtual {p1, p2, p3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 370
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create the file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method public static deserialize(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 133
    :cond_1
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 136
    iget-object p1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    iput-object p1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 137
    :cond_2
    iget-object p1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iput-object p0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    :cond_3
    return-object v1
.end method

.method private getLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private invalid()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In invalid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestSafWithFileCreation(Landroidx/fragment/app/Fragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.intent.extra.TITLE"

    .line 150
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/16 p3, 0x43

    .line 151
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "android.content.extra.SHOW_ADVANCED"

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 154
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private stringMismatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eq v2, v0, :cond_3

    return v1

    .line 384
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private takePermissionSAF()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public create()Z
    .locals 4

    .line 262
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->invalid()V

    .line 265
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 276
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 277
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_5

    .line 285
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    :catch_1
    :cond_5
    :goto_2
    return v1
.end method

.method public delete()Z
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 207
    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result v0

    const/4 v1, 0x3

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public equals(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->stringMismatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isDirect()Z

    move-result v0

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isDirect()Z

    move-result v1

    if-eq v0, v1, :cond_3

    return v2

    .line 326
    :cond_3
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 330
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 332
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 331
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 318
    :cond_5
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    iget-object v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    return v2
.end method

.method public existsAsFile()Z
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v2

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public getParentUri()Landroid/net/Uri;
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->invalid()V

    .line 191
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStream()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->invalid()V

    .line 161
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStream;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    :cond_1
    return-object v0

    .line 242
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->invalid()V

    .line 185
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 301
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    .line 302
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 303
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    .line 304
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public isDirect()Z
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->invalid()V

    .line 175
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalid()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()J
    .locals 2

    .line 220
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->invalid()V

    .line 222
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    const-string v1, "  tag="

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Invalid state] name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->srcType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourceFile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  treeSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->invalid()V

    .line 197
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getStream()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 198
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->setLength(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 197
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    .line 199
    :try_start_2
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->close()V

    :cond_2
    :goto_1
    throw v1
.end method
