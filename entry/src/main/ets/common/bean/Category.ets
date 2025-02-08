import type { ListItemData } from './ListItemData';

/**
 * Category item information.
 */
export class Category {

  /**
   * Category title.
   */
  title: Resource = {
    bundleName: '',
    moduleName: '',
    id: 0
  };;

  /**
   * Category content(a list).
   */
  categoryContent: Array<ListItemData> = [];
}