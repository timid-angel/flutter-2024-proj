import { Injectable } from '@nestjs/common';

@Injectable()
export class PlaylistService {
  create() {
    return 'This action adds a new playlist';
  }

  findAll() {
    return `This action returns all playlist`;
  }

  findOne(id: string) {
    return `This action returns a playlist`;
  }

  update(id: string) {
    return `This action updates a playlist`;
  }

  remove(id: string) {
    return `This action removes a playlist`;
  }
}
