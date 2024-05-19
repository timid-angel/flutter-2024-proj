import { Controller, Delete, Get, Param, Put, Req, Patch } from '@nestjs/common';
import { ArtistsService } from './artists.service';
import { Request } from 'express';
import { Artist } from 'src/auth/schema/artist.schema';

@Controller('artists')
export class ArtistsController {
    constructor(
        private artistService: ArtistsService
    ) { }

    @Get()
    async getArtists(@Req() req: Request) {
        return this.artistService.getArtists(req)
    }

    @Patch('update')
    async updateArtist(@Req() req: Request) {
        return this.artistService.updateArtist(req)
    }

    @Put(':id')
    async updateArtistAdmin(@Param('id') id: string, @Req() req: Request) {
        return this.artistService.updateArtistAdmin(id, req)
    }

    @Delete(':id')
    async deleteArtist(@Param('id') id: string, @Req() req: Request) {
        return this.artistService.deleteArtist(id, req)
    }

    @Patch('/ban/:id')
    async banArtist(@Param('id') id: string, @Req() req: Request) {
        return this.artistService.changeBan(id, req, true)
    }

    @Patch('/unban/:id')
    async unBanArtist(@Param('id') id: string, @Req() req: Request) {
        return this.artistService.changeBan(id, req, false)
    }
}
